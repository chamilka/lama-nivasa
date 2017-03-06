package pdn.sci.cs.action;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.District;
import pdn.sci.cs.entity.PoliceStation;
import pdn.sci.cs.entity.ProbationUnit;
import pdn.sci.cs.entity.SystemUser;
import pdn.sci.cs.service.DistrictService;
import pdn.sci.cs.service.PoliceStationService;
import pdn.sci.cs.service.ProbationUnitService;
import pdn.sci.cs.service.SystemUserService;

@Scope(value = "prototype")
public class ProbationUnitAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	@Autowired
	private ProbationUnitService probationUnitService;
	@Autowired
	private PoliceStationService policeStationService;
	@Autowired
	private SystemUserService systemUserService;
	@Autowired
	private DistrictService districtService;

	private static Logger logger = Logger.getLogger(ProbationUnitAction.class);

	private List<ProbationUnit> list;
	private List<PoliceStation> policeStationList;
	private ProbationUnit probationUnit;
	private List<SystemUser> probationOfficers;
	private String referenceId;
	private List<String> selectedPoliceStations;
	private String districtId;
	private List<District> districtList;
	private String districtIdSelected;

	private static final String provincial_officer = "Provincial Officer";

	public String list() {

		if (isAdminOrMinistry()) {
			list = probationUnitService.findAll();
			return SUCCESS;
		} else {
			String referenceId = getSessionUser().getReferenceId();
			
			if (isOfficer()) {
				if (isProvincialCommissionerORisProbationOfficerOfHeadquarter()) {
					list = probationUnitService.findByProvince(referenceId);
					return SUCCESS;
				} else {
					ProbationUnit punit = probationUnitService.findById(referenceId);
					list = new ArrayList<ProbationUnit>();
					list.add(punit);
					return SUCCESS;
				}
			} else {
				return INPUT;
			}
		}
	}

	public String searchForm() {
		return SUCCESS;
	}

	public String frame() {
		return SUCCESS;
	}

	public String search() {
		String referenceId = getSessionUser().getReferenceId();
		
		if(isAdminOrMinistry()){
			list = probationUnitService.search(probationUnit);
		}else if(isProvincialCommissionerORisProbationOfficerOfHeadquarter()){
			list = probationUnitService.search(probationUnit, referenceId);
		}else{
			if((probationUnit.getName()).equals("")){
				ProbationUnit punit = probationUnitService.findById(referenceId);
				list = new ArrayList<ProbationUnit>();
				list.add(punit);
			}else{
				list = new ArrayList<ProbationUnit>();
			}
		}
		return SUCCESS;
	}

	public String add() {
		addMode();
		return SUCCESS;
	}

	public String edit() {
		editMode();
		return view();
	}

	public String save() throws Exception {

		if (probationUnit != null) {
			validateProbationUnit();
			if (hasErrors()) {
				return INPUT;
			} else {
				try{
				if (operationMode == OPERATION_MODE.ADD && probationUnit.getId().isEmpty()) {
					setAddSettings(probationUnit);
					addPoliceStations();
					fieldsGenerators();
					probationUnit = probationUnitService.save(probationUnit);
				} else if (operationMode == OPERATION_MODE.EDIT && !probationUnit.getId().isEmpty()) {
					//setUpdateSettings(probationUnit);
					addPoliceStations();
					fieldsGenerators();
					probationUnitService.update(probationUnit);
				} else {
					addActionError("Error");
					return INPUT;
				}
			
		} catch (NullPointerException e) {
            e.printStackTrace();
            addActionError("Profile was not updated, pleace try again");
            return INPUT;}
			}
		}
			else {
		
			addActionError("Invalid Access");
			return INPUT;
		}
			
		this.id = probationUnit.getId();
		return view();
	}
			
	private void fieldsGenerators() {
		/*probationUnit.setDistrict(districtService.findById(probationUnit
				.getDistrict().getId()));*/
		probationUnit.setDistrict(districtService.findById(this.districtIdSelected));
	}

	private void addPoliceStations() {
		if (this.probationUnit != null && this.selectedPoliceStations != null) {
			if (probationUnit.getPoliceStations() == null) {
				probationUnit.setPoliceStations(new HashSet<PoliceStation>());
			}
			for (String s : selectedPoliceStations) {
				probationUnit.getPoliceStations().add(
						policeStationService.findById(s));
			}
		}
	}

	public String view() {

		if (id == null || id.isEmpty()) {
			addActionError("Invalid Access");
			return INPUT;
		} else {

			probationUnit = probationUnitService.findById(id);
			if (probationUnit == null) {
				addActionError("Item that your are searching could not be found");
				return INPUT;
			}

			referenceId = id;
			probationOfficerList();
			try{
			if (operationMode == OPERATION_MODE.EDIT) {
				selectedPoliceStations = new ArrayList<String>();
				if(probationUnit.getPoliceStations() != null){
					for (PoliceStation ps : probationUnit.getPoliceStations()) {
						selectedPoliceStations.add(ps.getId());
					}
				}
				districtId = probationUnit.getDistrict().getId();
			}	}catch (NullPointerException e) {
				e.printStackTrace();
			}
		}
		return SUCCESS;
	}

	public String delete() {
		if (this.id.isEmpty()) {
			addActionError("Could not delete the entry, id is missing");
			return INPUT;
		} else {
			try{
			probationUnitService.delete(id);
			}catch (Exception e) {
				e.printStackTrace();
			}
			return list();
		}

	}

	public String probationOfficerList() {
		if (referenceId != null) {
			probationOfficers = systemUserService.search(
					SystemUser.USER_ROLE.OFFICER, referenceId);
		} else {
			probationOfficers = new ArrayList<SystemUser>();
		}

		return SUCCESS;
	}

	private void validateProbationUnit() {
		if (this.probationUnit.getName().isEmpty()) {
			addFieldError("probationUnit.name", "Name cannot be empty");
		}

		if (this.districtIdSelected==null || this.districtIdSelected.isEmpty()) {
			addFieldError("probationUnit.district.id",
					"District cannot be empty");
		}
	}

	public List<ProbationUnit> getList() {
		return list;
	}

	public void setList(List<ProbationUnit> list) {
		this.list = list;
	}

	public ProbationUnit getProbationUnit() {
		return probationUnit;
	}

	public void setProbationUnit(ProbationUnit probationUnit) {
		this.probationUnit = probationUnit;
	}

	public List<PoliceStation> getPoliceStationList() {
		policeStationList = policeStationService.findAll();
		return policeStationList;
	}

	public void setPoliceStationList(List<PoliceStation> policeStationList) {
		this.policeStationList = policeStationList;
	}

	public String getReferenceId() {
		return referenceId;
	}

	public void setReferenceId(String referenceId) {
		this.referenceId = referenceId;
	}

	public List<SystemUser> getProbationOfficers() {
		return probationOfficers;
	}

	public void setProbationOfficers(List<SystemUser> probationOfficers) {
		this.probationOfficers = probationOfficers;
	}

	public List<String> getSelectedPoliceStations() {
		return selectedPoliceStations;
	}

	public void setSelectedPoliceStations(List<String> selectedPoliceStations) {
		this.selectedPoliceStations = selectedPoliceStations;
	}

	public List<District> getDistrictList() {
		districtList = districtService.findAll();
		return districtList;
	}

	public void setDistrictList(List<District> districtList) {
		this.districtList = districtList;
	}

	public String getDistrictId() {
		return districtId;
	}

	public void setDistrictId(String districtId) {
		this.districtId = districtId;
	}

	public String getDistrictIdSelected() {
		return districtIdSelected;
	}

	public void setDistrictIdSelected(String districtIdSelected) {
		this.districtIdSelected = districtIdSelected;
	}

}
