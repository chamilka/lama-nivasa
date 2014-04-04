package pdn.sci.cs.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.District;
import pdn.sci.cs.entity.GenericList;
import pdn.sci.cs.service.DistrictService;
import pdn.sci.cs.service.GenericListService;

@Scope(value = "prototype")
public class PrimaryInformationAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	@Autowired private GenericListService gerGenericListService;
	@Autowired private DistrictService districtService;
	
	private List<District> districtList;
	private List<GenericList> lamaNivasaTypeList;
	private List<GenericList> lamaNivasaReligiousTypeList;

	private List<GenericList> registrationStatusList;
	private List<GenericList> maintenanceDonationList;
	private List<GenericList> probationUnitList;
	
	private void viewInit() {
		
		lamaNivasaTypeList = gerGenericListService.findListByCategoryId("C030");
		lamaNivasaReligiousTypeList = gerGenericListService.findListByCategoryId("C040");
		registrationStatusList = gerGenericListService.findListByCategoryId("C070");
		maintenanceDonationList = gerGenericListService.findListByCategoryId("C020");
		probationUnitList = gerGenericListService.findListByCategoryId("C080");
		districtList = districtService.findAll();
	}
	
	public String primaryInfoView() {
		viewInit();
		return SUCCESS;
	}

	public List<District> getDistrictList() {
		return districtList;
	}

	public void setDistrictList(List<District> districtList) {
		this.districtList = districtList;
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

	public void setLamaNivasaReligiousTypeList(
			List<GenericList> lamaNivasaReligiousTypeList) {
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

	public List<GenericList> getProbationUnitList() {
		return probationUnitList;
	}

	public void setProbationUnitList(List<GenericList> probationUnitList) {
		this.probationUnitList = probationUnitList;
	}

}
