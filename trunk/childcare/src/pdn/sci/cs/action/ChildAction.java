package pdn.sci.cs.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.Child;
import pdn.sci.cs.entity.GenericList;
import pdn.sci.cs.entity.LamaNivasa;
import pdn.sci.cs.service.ChildService;
import pdn.sci.cs.service.GenericListService;
import pdn.sci.cs.service.LamaNivasaService;


@Scope(value = "prototype")
public class ChildAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	@Autowired private ChildService childService;
	@Autowired private LamaNivasaService lamaNivasaService;
	@Autowired private GenericListService genericListService;
	
	private Child child;
	private List<Child> list;
	private List<LamaNivasa> lamaNivasaList;
	
	private List<GenericList> yesNoList;
	private List<GenericList> genderTypeList;
	private List<GenericList> raceList;
	private List<GenericList> religionList;
	private List<GenericList> intakeMethodList;
	
	public String list() {
		list = childService.findAll();
		return SUCCESS;
	}
	
	public String searchForm() {
		searchPopulate();
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
		if(child != null) {
			String name ="", lamaNivasaId = "";
			
			if(child.getLamaNivasa() == null || child.getLamaNivasa().getId().isEmpty()) {
				lamaNivasaId = "";
			} else {
				lamaNivasaId = child.getLamaNivasa().getId();
			}
			
			if(child.getFullName() == null || child.getFullName().isEmpty()) {
				name = "";
			} else {
				name = child.getFullName();
			}
			list = childService.search(name, lamaNivasaId);
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
		
		if(child != null) {
			validateChild();
			if(hasErrors()) {
				return INPUT;
			} else {
				if(operationMode == OPERATION_MODE.ADD && child.getId().isEmpty()) {
					setAddSettings(child);
					child = childService.save(child);
				} else if (operationMode == OPERATION_MODE.EDIT && !child.getId().isEmpty() ) {
					setUpdateSettings(child);
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
	
	public String view() {
		
		if(id == null || id.isEmpty()) {
			addActionError("Invalid Access");
			return INPUT;
		} else {
			child = childService.findById(id);
			if(child == null) {
				addActionError("Item that your are searching could not be found");
			}
		}
		return SUCCESS;
	}
	
	public String delete() {
		if(this.id.isEmpty()) {
			addActionError("Could not delete the entry, id is missing");
			return INPUT;
		} else {
			childService.delete(id);
			return list();
		}
		
	}
	
	private void searchPopulate() {
		lamaNivasaList = lamaNivasaService.findAll();
	}
	
	private void addPopulate() {
		lamaNivasaList = lamaNivasaService.findAll();
		yesNoList = genericListService.findListByCategoryId("C010");
		genderTypeList = genericListService.findListByCategoryId("C001");
		raceList = genericListService.findListByCategoryId("C013");
		religionList = genericListService.findListByCategoryId("C040");
		intakeMethodList = genericListService.findListByCategoryId("C014");
	}
	
	private void validateChild() {
		if(child.getCode().isEmpty()) {
			addFieldError("child.code", "Code cannot be empty");
		}
		
		if(child.getFullName().isEmpty()) {
			addFieldError("child.fullName", "Full Name cannot be empty");
		}
		
		if(child.getLamaNivasa() == null) {
			addFieldError("child.lamaNivasa.id", "Select the lama nivasa");
		}
		
		if(child.getSexType().isEmpty()) {
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
	
}