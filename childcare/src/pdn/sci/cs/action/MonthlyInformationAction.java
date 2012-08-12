package pdn.sci.cs.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.action.BaseAction.OPERATION_MODE;
import pdn.sci.cs.entity.GenericList;
import pdn.sci.cs.entity.LamaNivasa;
import pdn.sci.cs.entity.MonthlyData;
import pdn.sci.cs.service.GenericListService;
import pdn.sci.cs.service.LamaNivasaService;
import pdn.sci.cs.service.MonthlyDataService;

@Scope(value = "prototype")
public class MonthlyInformationAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	@Autowired private GenericListService gerGenericListService;
	@Autowired private MonthlyDataService monthlyDataService;
	@Autowired private LamaNivasaService lamaNivasaService;
	private String lamaNivasaId;
	private MonthlyData monthlyData;
	private List<MonthlyData> list;
	
	private List<GenericList> yearList;
	private List<GenericList> monthList;
	private List<LamaNivasa> lamaNivasaList;
	
	private int year;
	private String month;
	
	public String frame() {
		return SUCCESS;
	}
	
	private void viewInit() {
		yearList = gerGenericListService.findListByCategoryId("C050");
		monthList = gerGenericListService.findListByCategoryId("C060");
		lamaNivasaList = lamaNivasaService.findAll();
	}
	
	private void findById() {
		if(id != null) {
			monthlyData = monthlyDataService.findById(id);
		} else {
			addActionError("Id is missing");
		}
	}
	
	public String add() {
		addMode();
		viewInit();
		return SUCCESS;
	}
	
	public String edit() {
		edit();
		findById();
		viewInit();
		return SUCCESS;
	}
	
	public String view() {
		viewInit();
		findById();
		return SUCCESS;
	}
	
	public String searchForm(){
		viewInit();
		return SUCCESS;
	}
	
	public String save(){
		
		if(monthlyData != null) {
			validateMonthlyData();
			if(hasErrors()) {
				viewInit();
				return INPUT;
			} else {
				if(operationMode == OPERATION_MODE.ADD && monthlyData.getId().isEmpty()) {
					setAddSettings(monthlyData);
					monthlyData = monthlyDataService.save(monthlyData);
				} else if (operationMode == OPERATION_MODE.EDIT && !monthlyData.getId().isEmpty() ) {
					setUpdateSettings(monthlyData);
					monthlyDataService.update(monthlyData);
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
		/*if(monthlyData.get().isEmpty()) {
			addFieldError("lamaNivasa.name", "Name cannot be empty");
		}
		
		if(lamaNivasa.getAddress().isEmpty()) {
			addFieldError("lamaNivasa.address", "Address cannot be empty");
		}
		
		if(lamaNivasa.getTelephone().isEmpty()) {
			addFieldError("lamaNivasa.telephone", "Telephone cannot be empty");
		}*/
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
	
	
	

}
