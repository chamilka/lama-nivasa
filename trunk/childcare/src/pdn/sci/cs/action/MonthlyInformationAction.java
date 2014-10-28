package pdn.sci.cs.action;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.GenericList;
import pdn.sci.cs.entity.LamaNivasa;
import pdn.sci.cs.entity.MonthlyData;
import pdn.sci.cs.entity.MonthlyDataReport;
import pdn.sci.cs.entity.Province;
import pdn.sci.cs.entity.SystemUser;
import pdn.sci.cs.service.GenericListService;
import pdn.sci.cs.service.LamaNivasaService;
import pdn.sci.cs.service.MonthlyDataService;
import pdn.sci.cs.service.ProvinceService;

@Scope(value = "prototype")
public class MonthlyInformationAction extends BaseAction {

  private static final long serialVersionUID = 1L;

  @Autowired
  private GenericListService gerGenericListService;
  @Autowired
  private MonthlyDataService monthlyDataService;
  @Autowired
  private LamaNivasaService lamaNivasaService;
  @Autowired
  private ProvinceService provinceService;

  private String lamaNivasaId;
  private MonthlyData monthlyData;
  private List<MonthlyData> list;

  private List<GenericList> yearList;
  private List<GenericList> monthList;
  private List<LamaNivasa> lamaNivasaList;
  private MonthlyDataReport monthlyDataReport;
  private List<Province> provinceList;

  private int year = Calendar.getInstance().get(Calendar.YEAR);
  private String month = "";

  public String frame() {
    return SUCCESS;
  }

  public String detailForm() {
    yearList = gerGenericListService.findListByCategoryId("C050");
    monthList = gerGenericListService.findListByCategoryId("C060");
    return SUCCESS;
  }

  public String detail() {
    monthlyDataReport = monthlyDataService.report(year, month);
    return SUCCESS;
  }

  private void viewInit() {
    yearList = gerGenericListService.findListByCategoryId("C050");
    monthList = gerGenericListService.findListByCategoryId("C060");

    if ((getSessionUser().getUserRole().equals(SystemUser.USER_ROLE.ADMIN.name()) || getSessionUser()
        .getUserRole().equals(SystemUser.USER_ROLE.MINISTRY.name()))) {
      lamaNivasaList = lamaNivasaService.findAll();
    } else {
      String referenceId = getSessionUser().getReferenceId();
      if (getSessionUser().getUserRole().equals(SystemUser.USER_ROLE.OFFICER.name())) {
        if (getSessionUser().getPost().equals(UserPost.PROVINCIAL_OFFICER.getStatusCode())) {
          lamaNivasaList = lamaNivasaService.findByProvinceId(referenceId);
        } else {
          lamaNivasaList = lamaNivasaService.findByReferenceId(referenceId);
        }
      } else {
        LamaNivasa lNiwasa = lamaNivasaService.findById(referenceId);
        lamaNivasaList = new ArrayList<LamaNivasa>();
        lamaNivasaList.add(lNiwasa);
      }
    }
  }

  private void findById() {
    if (id != null) {
      monthlyData = monthlyDataService.findById(id);
    } else {
      addActionError("Id is missing");
    }
  }

  public String add() {
    viewInit();
    assignCurrentYearMonth();
    addMode();

    assignLamaNivasaId();
    return SUCCESS;
  }

  public String edit() {
    // edit();
    findById();
    viewInit();
    editMode();
    assignLamaNivasaId();
    return SUCCESS;
  }

  public String view() {
    viewInit();
    findById();
    return SUCCESS;
  }

  public String searchForm() {
    viewInit();
    assignCurrentYearMonth();
    return SUCCESS;
  }

  public String delete() {
    if (this.id.isEmpty()) {
      addActionError("Could not delete the entry, id is missing");
      return INPUT;
    } else {
      try {
        monthlyDataService.delete(id);
      } catch (Exception e) {
        e.printStackTrace();
      }
      return add();
    }
  }

  public String search() {
    if (monthlyData == null) {
      addActionError("Invalid Access");
      return SUCCESS;
    } else {
      if (monthlyData.getLamaNivasa() == null || monthlyData.getLamaNivasa().getId() == null) {
        assignLamaNivasaId();
        if (lamaNivasaId == null) {
          addActionError("Please select a Lama Nivasa");
          return SUCCESS;
        }
        monthlyData.setLamaNivasa(new LamaNivasa());
        monthlyData.getLamaNivasa().setId(lamaNivasaId);
      }

      list = monthlyDataService.search(monthlyData);
      if (list == null || list.size() == 0) {
        addActionError("No records found");
      } else if (list.size() == 1) {
        monthlyData = list.get(0);
      } else {
        return "more";
      }
    }
    return SUCCESS;
  }

  public String save() {

    if (monthlyData != null) {
      validateMonthlyData();
      if (hasErrors()) {
        viewInit();
        return INPUT;
      } else {
        try {
          if (operationMode == OPERATION_MODE.ADD && monthlyData.getId().isEmpty()) {
            if (monthlyData.getLamaNivasa().getId() != null && monthlyData.getMonth() != null
                && monthlyData.getYear() != null) { // delete if there is an entry before
              monthlyDataService.deleteByLamaNivasaYearMonth(monthlyData.getLamaNivasa().getId(),
                  monthlyData.getYear(), monthlyData.getMonth());
            }
            setAddSettings(monthlyData);
            monthlyData = monthlyDataService.save(monthlyData);
          } else if (operationMode == OPERATION_MODE.EDIT && !monthlyData.getId().isEmpty()) {
            setUpdateSettings(monthlyData);
            monthlyDataService.update(monthlyData);
          } else {
            addActionError("Error");
            viewInit();
            return INPUT;
          }
        } catch (Exception e) {
          addActionError("Error while saving data");
          viewInit();
          return INPUT;
        }

      }
    } else {
      addActionError("Invalid Access");
      viewInit();
      return INPUT;
    }
    return SUCCESS;
  }

  private void assignCurrentYearMonth() {
    monthlyData = new MonthlyData();
    Calendar calendar = new GregorianCalendar();

    monthlyData.setYear(calendar.get(Calendar.YEAR));
    monthlyData.setMonth(monthList.get(calendar.get(Calendar.MONTH)).getListKey());
  }

  private void assignLamaNivasaId() {
    SystemUser user = getSessionUser();
    if (user != null) {
      if (user.getUserRole().equals(SystemUser.USER_ROLE.USER.name())) {
        lamaNivasaId = user.getReferenceId();
      }
    }
  }

  public List<GenericList> getYearList() {
    return yearList;
  }

  public void setYearList(List<GenericList> yearList) {
    this.yearList = yearList;
  }

  public List<GenericList> getMonthList() {
    return monthList;
  }

  public void setMonthList(List<GenericList> monthList) {
    this.monthList = monthList;
  }

  public String getLamaNivasaId() {
    return lamaNivasaId;
  }

  public void setLamaNivasaId(String lamaNivasaId) {
    this.lamaNivasaId = lamaNivasaId;
  }

  public MonthlyData getMonthlyData() {
    return monthlyData;
  }

  public void setMonthlyData(MonthlyData monthlyData) {
    this.monthlyData = monthlyData;
  }

  public List<MonthlyData> getList() {
    return list;
  }

  public void setList(List<MonthlyData> list) {
    this.list = list;
  }


  public List<LamaNivasa> getLamaNivasaList() {
    return lamaNivasaList;
  }

  public void setLamaNivasaList(List<LamaNivasa> lamaNivasaList) {
    this.lamaNivasaList = lamaNivasaList;
  }

  private void validateMonthlyData() {
    /*
     * if(monthlyData.get().isEmpty()) { addFieldError("lamaNivasa.name", "Name cannot be empty"); }
     * 
     * if(lamaNivasa.getAddress().isEmpty()) { addFieldError("lamaNivasa.address",
     * "Address cannot be empty"); }
     * 
     * if(lamaNivasa.getTelephone().isEmpty()) { addFieldError("lamaNivasa.telephone",
     * "Telephone cannot be empty"); }
     */
  }

  public int getYear() {
    return year;
  }

  public void setYear(int year) {
    this.year = year;
  }

  public String getMonth() {
    return month;
  }

  public void setMonth(String month) {
    this.month = month;
  }

  public MonthlyDataReport getMonthlyDataReport() {
    return monthlyDataReport;
  }

  public void setMonthlyDataReport(MonthlyDataReport monthlyDataReport) {
    this.monthlyDataReport = monthlyDataReport;
  }

  public List<Province> getProvinceList() {
    return provinceList;
  }

  public void setProvinceList(List<Province> provinceList) {
    this.provinceList = provinceList;
  }

}
