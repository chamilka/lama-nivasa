package pdn.sci.cs.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.ProbationUnit;
import pdn.sci.cs.service.ProbationUnitService;

@Scope(value = "prototype")
public class ProbationUnitAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	@Autowired private ProbationUnitService probationUnitService;
	
	private List<ProbationUnit> list;
	private ProbationUnit probationUnit;
	
	public String list() {
		list = probationUnitService.findAll();
		return SUCCESS;
	}
	
	public String searchForm() {
		return SUCCESS;
	}
	
	public String frame() {
		return SUCCESS;
	}
	
	public String search() {
		list = probationUnitService.search(probationUnit);
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
	
	public String save() {
		
		if(probationUnit != null) {
			validateProbationUnit();
			if(hasErrors()) {
				return INPUT;
			} else {
				if(operationMode == OPERATION_MODE.ADD && probationUnit.getId().isEmpty()) {
					setAddSettings(probationUnit);
					probationUnit = probationUnitService.save(probationUnit);
				} else if (operationMode == OPERATION_MODE.EDIT && !probationUnit.getId().isEmpty() ) {
					setUpdateSettings(probationUnit);
					probationUnitService.update(probationUnit);
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
			probationUnit = probationUnitService.findById(id);
			if(probationUnit == null) {
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
			probationUnitService.delete(id);
			return list();
		}
		
	}

	private void validateProbationUnit() {
		if(this.probationUnit.getName().isEmpty()) {
			addFieldError("probationUnit.name", "Name cannot be empty");
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
	
}
