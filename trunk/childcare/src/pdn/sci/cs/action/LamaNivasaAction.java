package pdn.sci.cs.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.DivisionalSecretariat;
import pdn.sci.cs.entity.GenericList;
import pdn.sci.cs.entity.LamaNivasa;
import pdn.sci.cs.entity.ProbationUnit;
import pdn.sci.cs.entity.SystemUser;
import pdn.sci.cs.service.DivisionalSecretariatService;
import pdn.sci.cs.service.GenericListService;
import pdn.sci.cs.service.LamaNivasaService;
import pdn.sci.cs.service.ProbationUnitService;
import pdn.sci.cs.service.SystemUserService;
import pdn.sci.cs.util.Pager;

@Scope(value = "prototype")
public class LamaNivasaAction extends BaseAction {

  private static final long serialVersionUID = 1L;

  @Autowired
  private LamaNivasaService lamaNivasaService;
  @Autowired
  private ProbationUnitService probationUnitService;
  @Autowired
  private GenericListService genericListService;
  @Autowired
  private DivisionalSecretariatService divisionalSecretariatService;
  @Autowired
  private SystemUserService systemUserService;

  private List<DivisionalSecretariat> divisionalSecretariatList;
  private List<GenericList> lamaNivasaTypeList;
  private List<GenericList> lamaNivasaReligiousTypeList;

  private List<GenericList> registrationStatusList;
  private List<GenericList> maintenanceDonationList;
  private List<GenericList> yesNoList;
  private List<ProbationUnit> probationUnitList;
  private List<SystemUser> probationUnitOfficerList;
  private List<GenericList> religionList;

  private List<LamaNivasa> list;
  private LamaNivasa lamaNivasa;

  public String list() {
    if (!getSessionUser().getUserRole().equals(SystemUser.USER_ROLE.ADMIN.name())) {
      String referenceId = getSessionUser().getReferenceId();
      if (referenceId == null) {
        return INPUT;
      } else {

        if (getSessionUser().getUserRole().equals(SystemUser.USER_ROLE.USER.name())) {
          // if user only own children home
          try {
            lamaNivasa = lamaNivasaService.findById(referenceId);
            list = new ArrayList<LamaNivasa>();
            list.add(lamaNivasa);
            targetDiv = "lamaNivasaResultDiv";
            pager = new Pager(0, list.size(), list.size(), list);
            setActionContext(pager);
          } catch (Exception e) {
            e.printStackTrace();
            addActionError("You have not assigned to a children\'s home");
            return INPUT;
          }
        } else {
          // if officer only own lama nivasa
          try {
            list = lamaNivasaService.findByReferenceId(referenceId);
            targetDiv = "lamaNivasaResultDiv";
            pager = new Pager(0, list.size(), list.size(), list);
            setActionContext(pager);
          } catch (Exception e) {
            e.printStackTrace();
            addActionError("You have not assigned to a children\'s home");
            return INPUT;
          }
        }
      }
    }

    else {
      // admin shows all lama nivasa
      populateList();
    }
    return SUCCESS;
  }

  private void populateList() {
    pager = lamaNivasaService.findAll(pageStart, pageSize);
    targetDiv = "lamaNivasaResultDiv";
    setActionContext(pager);
  }

  public String searchForm() {
    // divisionalSecretariatList = divisionalSecretariatService.findAll();
    probationUnitList = probationUnitService.findAll();
    return SUCCESS;
  }

  public String frame() {
    return SUCCESS;
  }

  public String add() {
    viewInit();
    addMode();
    return SUCCESS;
  }

  public String edit() {
    editMode();
    viewInit();
    return view();
  }

  public String search() {

    list = lamaNivasaService.search(lamaNivasa);
    targetDiv = "lamaNivasaResultDiv";
    pager = new Pager(0, list.size(), list.size(), list);
    setActionContext(pager);

    return SUCCESS;
  }

  public String save() {

    if (lamaNivasa != null) {
      validateLamaNivasa();
      if (hasErrors()) {
        viewInit();
        return INPUT;
      } else {
        if (operationMode == OPERATION_MODE.ADD && lamaNivasa.getId().isEmpty()) {
          setAddSettings(lamaNivasa);
          lamaNivasa = lamaNivasaService.save(lamaNivasa);
        } else if (operationMode == OPERATION_MODE.EDIT && !lamaNivasa.getId().isEmpty()) {
          setUpdateSettings(lamaNivasa);
          lamaNivasaService.update(lamaNivasa);
        } else {
          addActionError("Error");
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

  public String view() {

    if (id == null || id.isEmpty()) {
      addActionError("Invalid Access");
      return INPUT;
    } else {
      lamaNivasa = lamaNivasaService.findById(id);
      if (lamaNivasa == null) {
        addActionError("Item that your are searching could not be found");
      }
    }
    return SUCCESS;
  }

  public String delete() {
    if (this.id.isEmpty()) {
      addActionError("Could not delete the entry, id is missing");
      return INPUT;
    } else {
      lamaNivasaService.delete(id);
      return list();
    }

  }

  private void validateLamaNivasa() {
    if (lamaNivasa.getName().isEmpty()) {
      addFieldError("lamaNivasa.name", "Name cannot be empty");
    }

    if (lamaNivasa.getAddress().isEmpty()) {
      addFieldError("lamaNivasa.address", "Address cannot be empty");
    }

    if (lamaNivasa.getTelephone().isEmpty()) {
      addFieldError("lamaNivasa.telephone", "Telephone cannot be empty");
    }

  }

  private void viewInit() {
    lamaNivasaTypeList = genericListService.findListByCategoryId("C030");
    lamaNivasaReligiousTypeList = genericListService.findListByCategoryId("C040");
    registrationStatusList = genericListService.findListByCategoryId("C070");
    maintenanceDonationList = genericListService.findListByCategoryId("C020");
    yesNoList = genericListService.findListByCategoryId("C010");
    religionList = genericListService.findListByCategoryId("C040");

    probationUnitList = probationUnitService.findAll();
    divisionalSecretariatList = divisionalSecretariatService.findAll();
    probationUnitOfficerList = systemUserService.findByUserRole(SystemUser.USER_ROLE.OFFICER);
  }

  public List<LamaNivasa> getList() {
    return list;
  }

  public void setList(List<LamaNivasa> list) {
    this.list = list;
  }

  public LamaNivasa getLamaNivasa() {
    return lamaNivasa;
  }

  public void setLamaNivasa(LamaNivasa lamaNivasa) {
    this.lamaNivasa = lamaNivasa;
  }

  public List<DivisionalSecretariat> getDivisionalSecretariatList() {
    return divisionalSecretariatList;
  }

  public void setDivisionalSecretariatList(List<DivisionalSecretariat> divisionalSecretariatList) {
    this.divisionalSecretariatList = divisionalSecretariatList;
  }

  public List<GenericList> getLamaNivasaTypeList() {
    return lamaNivasaTypeList;
  }

  public void setLamaNivasaTypeList(List<GenericList> lamaNivasaTypeList) {
    this.lamaNivasaTypeList = lamaNivasaTypeList;
  }

  public List<GenericList> getLamaNivasaReligiousTypeList() {
    return lamaNivasaReligiousTypeList;
  }

  public void setLamaNivasaReligiousTypeList(List<GenericList> lamaNivasaReligiousTypeList) {
    this.lamaNivasaReligiousTypeList = lamaNivasaReligiousTypeList;
  }

  public List<GenericList> getRegistrationStatusList() {
    return registrationStatusList;
  }

  public void setRegistrationStatusList(List<GenericList> registrationStatusList) {
    this.registrationStatusList = registrationStatusList;
  }

  public List<GenericList> getMaintenanceDonationList() {
    return maintenanceDonationList;
  }

  public void setMaintenanceDonationList(List<GenericList> maintenanceDonationList) {
    this.maintenanceDonationList = maintenanceDonationList;
  }

  public List<GenericList> getYesNoList() {
    return yesNoList;
  }

  public void setYesNoList(List<GenericList> yesNoList) {
    this.yesNoList = yesNoList;
  }

  public List<ProbationUnit> getProbationUnitList() {
    return probationUnitList;
  }

  public void setProbationUnitList(List<ProbationUnit> probationUnitList) {
    this.probationUnitList = probationUnitList;
  }

  public List<SystemUser> getProbationUnitOfficerList() {
    return probationUnitOfficerList;
  }

  public void setProbationUnitOfficerList(List<SystemUser> probationUnitOfficerList) {
    this.probationUnitOfficerList = probationUnitOfficerList;
  }

  public List<GenericList> getReligionList() {
    return religionList;
  }

  public void setReligionList(List<GenericList> religionList) {
    this.religionList = religionList;
  }



}
