package pdn.sci.cs.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.Child;
import pdn.sci.cs.entity.District;
import pdn.sci.cs.entity.GenericList;
import pdn.sci.cs.entity.LamaNivasa;
import pdn.sci.cs.entity.Province;
import pdn.sci.cs.entity.SystemUser;
import pdn.sci.cs.service.ChildService;
import pdn.sci.cs.service.DistrictService;
import pdn.sci.cs.service.GenericListService;
import pdn.sci.cs.service.LamaNivasaService;
import pdn.sci.cs.service.ProvinceService;
import pdn.sci.cs.util.ChildrenSummary;

@Scope(value = "prototype")
public class ChildAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	@Autowired
	private ChildService childService;

	@Autowired
	private LamaNivasaService lamaNivasaService;

	@Autowired
	private GenericListService genericListService;

	@Autowired
	private DistrictService districtService;

	@Autowired
	private ProvinceService provinceService;

	private ChildrenSummary childSummary;

	private Child child;
	private List<Child> list;
	private List<LamaNivasa> lamaNivasaList;

	private List<GenericList> yesNoList;
	private List<GenericList> genderTypeList;
	private List<GenericList> raceList;
	private List<GenericList> religionList;
	private List<GenericList> intakeMethodList;
	private List<GenericList> parentAvailabilityList;
	private List<GenericList> hasDoNotHaveProcessingList;
	private List<GenericList> childCategoryList;
	private List<GenericList> ageLimitList;
	private List<Province> provinceList;

	private List<District> districtList;
	private String searchDistrict;
	private int searchAge = 0;
	private String searchProvince;

	private Boolean ageView = true;

	public String childSummaryFrame() {
		return SUCCESS;
	}

	public String summarySearchForm() {
		ageLimitList = genericListService.findListByCategoryId("C090");

		if (isOfficer()) {
			String s = getSessionUser().getReferenceId();
			provinceList = provinceService.findByReferenceIdASaList(s);
			districtList = districtService.findByProvinceID(getSessionUser().getReferenceId());

		} else {
			districtList = districtService.findAll();
			provinceList = provinceService.findAll();
		}
		return SUCCESS;
	}

	public String summarySearch() {
		if (isOfficer()) {
			childSummary = childService.getChildrenSummary(searchAge, searchDistrict,
					getSessionUser().getReferenceId());
		} else {
			childSummary = childService.getChildrenSummary(searchAge, searchDistrict, searchProvince);
		}

		if (searchAge > 0) {
			setAgeView(false);
		}
		return SUCCESS;
	}

	public String childSummary() {
		if (isOfficer()) {
			childSummary = childService.getChildrenSummary(-1, "-1", getSessionUser().getReferenceId());
		} else {
			childSummary = childService.getChildrenSummary();
		}
		return SUCCESS;
	}

	public String childDetail() {
		// childSummary = childService.getChildrenSummary();
		return SUCCESS;
	}

	public String list() {
		if (!(isAdminOrMinistry())) {
			String referenceId = getSessionUser().getReferenceId();

			if (referenceId == null) {
				return INPUT;
			} else {
				if (isUser()) {
					try {
						pager = childService.findAllByLamaNivasaId(referenceId, pageStart, pageSize);
						targetDiv = "childResultDiv";
						setActionContext(pager);
						return SUCCESS;
					} catch (Exception e) {
						e.printStackTrace();
						return INPUT;
					}
				} else {

					if (isProvincialCommissioner()) {

						try {
							pager = childService.findAllByProvinceId(referenceId, pageStart, pageSize);
							targetDiv = "childResultDiv";
							setActionContext(pager);
							return SUCCESS;
						} catch (Exception e) {
							e.printStackTrace();
							return INPUT;
						}
					} else {
						try {
							pager = childService.findAllByProbationUnitId(referenceId, pageStart, pageSize);
							targetDiv = "childResultDiv";
							setActionContext(pager);
							return SUCCESS;
						} catch (Exception e) {
							e.printStackTrace();
							return INPUT;
						}
					}
				}
			}
		} else {
			pager = childService.findAll(pageStart, pageSize);
			targetDiv = "childResultDiv";
			setActionContext(pager);
			return SUCCESS;
		}
	}

	public String deletedList() {
		if (!(getSessionUser().getUserRole().equals(SystemUser.USER_ROLE.ADMIN.name())
				|| getSessionUser().getUserRole().equals(SystemUser.USER_ROLE.MINISTRY.name()))) {
			String referenceId = getSessionUser().getReferenceId();
			// pageSize = 4 *SEARCH_PAGE_SIZE;

			if (referenceId == null) {
				return INPUT;
			} else {

				if (getSessionUser().getUserRole().equals(SystemUser.USER_ROLE.USER.name())) {

					try {
						pager = childService.findAllDeletedByLamaNivasaId(referenceId, pageStart, pageSize);
						targetDiv = "childResultDiv";
						setActionContext(pager);
						return SUCCESS;
					} catch (Exception e) {
						e.printStackTrace();
						return INPUT;
					}
				} else {
					try {
						pager = childService.findAllDeletedByProbationUnitId(referenceId, pageStart, pageSize);
						targetDiv = "childResultDiv";
						setActionContext(pager);
						return SUCCESS;
					} catch (Exception e) {
						e.printStackTrace();
						return INPUT;
					}
				}
			}
		} else {
			pager = childService.findAllDeleted(pageStart, pageSize);
			targetDiv = "childResultDiv";
			setActionContext(pager);
			return SUCCESS;
		}
	}

	public String unconfirmedList() {
		if (!(getSessionUser().getUserRole().equals(SystemUser.USER_ROLE.ADMIN.name())
				|| getSessionUser().getUserRole().equals(SystemUser.USER_ROLE.MINISTRY.name()))) {
			String referenceId = getSessionUser().getReferenceId();
			// pageSize = 4 *SEARCH_PAGE_SIZE;

			if (referenceId == null) {
				return INPUT;
			} else {

				try {
					pager = childService.findAllUnconfirmedByProbationUnitId(referenceId, pageStart, pageSize);
					targetDiv = "childResultDiv";
					setActionContext(pager);
					return SUCCESS;
				} catch (Exception e) {
					e.printStackTrace();
					return INPUT;
				}

			}
		} else {
			pager = childService.findAllDeleted(pageStart, pageSize);
			targetDiv = "childResultDiv";
			setActionContext(pager);
			return SUCCESS;
		}
	}

	public String searchForm() {
		searchPopulate();
		return SUCCESS;
	}

	public String searchFormLamaNivasa() {
		String referenceId = getSessionUser().getReferenceId();
		LamaNivasa lamaNivasa = lamaNivasaService.findById(referenceId);
		lamaNivasaList = new ArrayList<LamaNivasa>();
		lamaNivasaList.add(lamaNivasa);
		return SUCCESS;
	}

	public String frame() {
		return SUCCESS;
	}

	public String add() {

		addMode();
		addPopulate();
		return SUCCESS;

	}

	public String search() {

		final String defaultValue = "";
		String referenceId = getSessionUser().getReferenceId();

		if (child != null) {

			String name = defaultValue, lamaNivasaId = defaultValue;
			String code = defaultValue;

			if (child.getLamaNivasa() == null || child.getLamaNivasa().getId().isEmpty()) {
				lamaNivasaId = defaultValue;
			} else {
				lamaNivasaId = child.getLamaNivasa().getId();
			}

			if (child.getFullName() == null || child.getFullName().isEmpty()) {
				name = defaultValue;
			} else {
				name = child.getFullName();
			}

			if (child.getCode() == null || child.getCode().isEmpty()) {
				code = defaultValue;
			} else {
				code = child.getCode();
			}

			if (name.equals(defaultValue) && lamaNivasaId.equals(defaultValue) && code.equals(defaultValue)) {
				addActionError("No suitable inputs");
				return INPUT;
			} else if (lamaNivasaId.equals(defaultValue) && code.equals(defaultValue) && name.trim().length() < 4) {
				addActionError("Name must be at least four (4) characters");
				return INPUT;
			}

			targetDiv = "childResultDiv";
			pageSize = 200;
			if (isAdminOrMinistry()) {
				pager = childService.search(name, code, lamaNivasaId, pageStart, pageSize);
			} else if (isOfficer()) {
				if (isProvincialCommissioner()) {
					pager = childService.searchByProvince(name, code, lamaNivasaId, referenceId, pageStart, pageSize);
				} else {

				}
			} else if (isUser()) {

				if (name.equals(defaultValue) && lamaNivasaId.equals(defaultValue) && code.equals(defaultValue)) {
					// addActionError("No suitable inputs");
					// return INPUT;
					list();
				} else if (lamaNivasaId.equals(defaultValue) && code.equals(defaultValue) && name.trim().length() < 4) {
					addActionError("Name must be at least four (4) characters");
					return INPUT;
				}

				targetDiv = "childResultDiv";
				pageSize = 200;

				if (isAdminOrMinistry()) {
					pager = childService.search(name, code, lamaNivasaId, pageStart, pageSize);
				} else if (isOfficer()) {
					if (isProvincialCommissioner()) {
						pager = childService.searchByProvince(name, code, lamaNivasaId, referenceId, pageStart,
								pageSize);
					} else {
						pager = childService.searchByProbationUnit(name, code, lamaNivasaId, referenceId, pageStart,
								pageSize);
					}
				} else if (isUser()) {
					pager = childService.searchByLamanivasa(name, referenceId, pageStart, pageSize);
				}

				setActionContext(pager);
			}

		} else {
			addActionError("Please give a criteria");
		}
		return SUCCESS;
	}

	public String edit() {
		editMode();
		addPopulate();
		return view();
	}

	public String save() {

		if (child != null) {
			validateChild();
			if (hasErrors()) {
				addPopulate();
				return INPUT;
			} else {
				if (operationMode == OPERATION_MODE.ADD && child.getId().isEmpty()) {
					setAddSettings(child);
					fieldsGenerators();
					child.setStatus(UNCONFIRMED_STATE);
					child = childService.save(child);
				} else if (operationMode == OPERATION_MODE.EDIT && !child.getId().isEmpty()) {
					setUpdateSettings(child);
					fieldsGenerators();
					child.setStatus(UNCONFIRMED_STATE);
					childService.update(child);
				} else {
					addActionError("Error");
					return INPUT;
				}

			}
		} else {
			addActionError("Invalid Access");
			return INPUT;
		}
		return SUCCESS;
	}

	private void fieldsGenerators() {
		child.setLamaNivasa(lamaNivasaService.findById(child.getLamaNivasa().getId()));
	}

	public String view() {

		if (id == null || id.isEmpty()) {
			addActionError("Invalid Access");
			return INPUT;
		} else {
			child = childService.findById(id);
			if (child == null) {
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
			try {
				child = childService.findById(this.id);
				if (child != null) {
					setUpdateSettings(child);
					child.setStatus(INACTIVE_STATE);
					childService.save(child);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return list();
		}
	}

	public String restore() {
		if (this.id.isEmpty()) {
			addActionError("Could not delete the entry, id is missing");
			return INPUT;
		} else {
			child = childService.findById(this.id);
			if (child != null) {
				setUpdateSettings(child);
				child.setStatus(ACTIVE_STATE);
				childService.save(child);
			}
			return list();
		}
	}

	public String confirm() {
		if (this.id.isEmpty()) {
			addActionError("Could not delete the entry, id is missing");
			return INPUT;
		} else {
			child = childService.findById(this.id);
			if (child != null) {
				setUpdateSettings(child);
				child.setStatus(ACTIVE_STATE);
				childService.save(child);
			}
			return list();
		}
	}

	private void searchPopulate() {
		String referenceId = getSessionUser().getReferenceId();

		if (isAdminOrMinistry()) {
			lamaNivasaList = lamaNivasaService.findAll();
		} else if (isOfficer()) {
			if (isProvincialCommissioner()) {
				lamaNivasaList = lamaNivasaService.findByProvinceId(referenceId);
			} else {
				lamaNivasaList = lamaNivasaService.findByReferenceId(referenceId);
			}
		}
	}

	private void addPopulate() {
		if (getSessionUser().getUserRole().equals(SystemUser.USER_ROLE.USER.name())) {
			// if user only own children home
			String referenceId = getSessionUser().getReferenceId();
			if (referenceId == null) {
				addActionError("Exception, No children home for this user");
			} else {
				LamaNivasa lamaNivasa = lamaNivasaService.findById(referenceId);
				lamaNivasaList = new ArrayList<LamaNivasa>();
				lamaNivasaList.add(lamaNivasa);
			}
		} else {
			lamaNivasaList = lamaNivasaService.findAll();
		}

		yesNoList = genericListService.findListByCategoryId("C010");
		genderTypeList = genericListService.findListByCategoryId("C001");
		raceList = genericListService.findListByCategoryId("C013");
		religionList = genericListService.findListByCategoryId("C040");
		intakeMethodList = genericListService.findListByCategoryId("C014");
		parentAvailabilityList = genericListService.findListByCategoryId("C017");
		hasDoNotHaveProcessingList = genericListService.findListByCategoryId("C015");
		childCategoryList = genericListService.findListByCategoryId("C016");
	}

	private void validateChild() {
		if (child.getCode().isEmpty()) {
			addFieldError("child.code", "Code cannot be empty");
		}

		if (child.getFullName().isEmpty()) {
			addFieldError("child.fullName", "Full Name cannot be empty");
		}

		if (child.getLamaNivasa() == null || child.getLamaNivasa().getId() == null) {
			addFieldError("child.lamaNivasa.id", "Select the lama nivasa");
		}

		if (child.getSexType().isEmpty()) {
			addFieldError("child.sexType", "Sex type cannot be empty");
		}

	}

	public Child getChild() {
		return child;
	}

	public void setChild(Child child) {
		this.child = child;
	}

	public List<Child> getList() {
		return list;
	}

	public void setList(List<Child> list) {
		this.list = list;
	}

	public List<LamaNivasa> getLamaNivasaList() {
		return lamaNivasaList;
	}

	public void setLamaNivasaList(List<LamaNivasa> lamaNivasaList) {
		this.lamaNivasaList = lamaNivasaList;
	}

	public List<GenericList> getYesNoList() {
		return yesNoList;
	}

	public void setYesNoList(List<GenericList> yesNoList) {
		this.yesNoList = yesNoList;
	}

	public List<GenericList> getGenderTypeList() {
		return genderTypeList;
	}

	public void setGenderTypeList(List<GenericList> genderTypeList) {
		this.genderTypeList = genderTypeList;
	}

	public List<GenericList> getRaceList() {
		return raceList;
	}

	public void setRaceList(List<GenericList> raceList) {
		this.raceList = raceList;
	}

	public List<GenericList> getReligionList() {
		return religionList;
	}

	public void setReligionList(List<GenericList> religionList) {
		this.religionList = religionList;
	}

	public List<GenericList> getIntakeMethodList() {
		return intakeMethodList;
	}

	public void setIntakeMethodList(List<GenericList> intakeMethodList) {
		this.intakeMethodList = intakeMethodList;
	}

	public List<GenericList> getParentAvailabilityList() {
		return parentAvailabilityList;
	}

	public void setParentAvailabilityList(List<GenericList> parentAvailabilityList) {
		this.parentAvailabilityList = parentAvailabilityList;
	}

	public List<GenericList> getHasDoNotHaveProcessingList() {
		return hasDoNotHaveProcessingList;
	}

	public void setHasDoNotHaveProcessingList(List<GenericList> hasDoNotHaveProcessingList) {
		this.hasDoNotHaveProcessingList = hasDoNotHaveProcessingList;
	}

	public List<GenericList> getChildCategoryList() {
		return childCategoryList;
	}

	public void setChildCategoryList(List<GenericList> childCategoryList) {
		this.childCategoryList = childCategoryList;
	}

	public ChildrenSummary getChildSummary() {
		return childSummary;
	}

	public void setChildSummary(ChildrenSummary childSummary) {
		this.childSummary = childSummary;
	}

	public List<District> getDistrictList() {
		return districtList;
	}

	public void setDistrictList(List<District> districtList) {
		this.districtList = districtList;
	}

	public String getSearchDistrict() {
		return searchDistrict;
	}

	public void setSearchDistrict(String searchDistrict) {
		this.searchDistrict = searchDistrict;
	}

	public int getSearchAge() {
		return searchAge;
	}

	public void setSearchAge(int searchAge) {
		this.searchAge = searchAge;
	}

	public List<GenericList> getAgeLimitList() {
		return ageLimitList;
	}

	public void setAgeLimitList(List<GenericList> ageLimitList) {
		this.ageLimitList = ageLimitList;
	}

	public List<Province> getProvinceList() {
		return provinceList;
	}

	public void setProvinceList(List<Province> provinceList) {
		this.provinceList = provinceList;
	}

	public String getSearchProvince() {
		return searchProvince;
	}

	public void setSearchProvince(String searchProvince) {
		this.searchProvince = searchProvince;
	}

	public Boolean getAgeView() {
		return ageView;
	}

	public void setAgeView(Boolean ageView) {
		this.ageView = ageView;
	}

}
