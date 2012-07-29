package pdn.sci.cs.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.GenericList;
import pdn.sci.cs.service.GenericListService;

@Scope(value = "prototype")
public class MonthlyInformationAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	@Autowired private GenericListService gerGenericListService;
	
	private List<GenericList> yearList;
	private List<GenericList> monthList;
	
	
	private void viewInit() {

		yearList = gerGenericListService.findListByCategoryId("C050");
		monthList = gerGenericListService.findListByCategoryId("C060");

	}
	
	public String monthlyInfoView() {
		viewInit();
		return SUCCESS;
	}
	public String save(){
		
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
	

}
