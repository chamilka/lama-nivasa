package pdn.sci.cs.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.ChildGuardian;
import pdn.sci.cs.service.ChildGuardianService;

@Scope(value = "prototype")
public class ChildGuardianAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	@Autowired private ChildGuardianService childGuardianService;

	private String childId;
	private ChildGuardian childGuardian;
	private List<ChildGuardian> list;

	
	public String list() {
		search();
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
		if(childId != null) {
			list = childGuardianService.findByChildId(childId);
		} else {
			addActionError("Please give a criteria");
		}
		
		return SUCCESS; 
	}
	
	public String edit() {
		editMode();
		return view();
	}
	
	public String save() {
		
		if(childGuardian != null) {
			validateChild();
			if(hasErrors()) {
				return INPUT;
			} else {
				if(operationMode == OPERATION_MODE.ADD && childGuardian.getId().isEmpty()) {
					setAddSettings(childGuardian);
					childGuardian = childGuardianService.save(childGuardian);
				} else if (operationMode == OPERATION_MODE.EDIT && !childGuardian.getId().isEmpty() ) {
					setUpdateSettings(childGuardian);
					childGuardianService.update(childGuardian);
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
			childGuardian = childGuardianService.findById(id);
			childId = childGuardian.getChild().getId();
			if(childGuardian == null) {
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
			childGuardianService.delete(id);
			return list();
		}
		
	}
	
	private void searchPopulate() {
		
	}
	
	private void addPopulate() {
		
	}
	
	private void validateChild() {
		if(childGuardian.getName().isEmpty()) {
			addFieldError("childGuardian.name", "Name cannot be empty");
		}
	}

	public String getChildId() {
		return childId;
	}

	public void setChildId(String childId) {
		this.childId = childId;
	}

	public ChildGuardian getChildGuardian() {
		return childGuardian;
	}

	public void setChildGuardian(ChildGuardian childGuardian) {
		this.childGuardian = childGuardian;
	}

	public List<ChildGuardian> getList() {
		return list;
	}

	public void setList(List<ChildGuardian> list) {
		this.list = list;
	}

	
}
