package pdn.sci.cs.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.Child;
import pdn.sci.cs.entity.ChildTransfer;
import pdn.sci.cs.entity.LamaNivasa;
import pdn.sci.cs.service.ChildService;
import pdn.sci.cs.service.ChildTransferService;
import pdn.sci.cs.service.LamaNivasaService;

@Scope(value = "prototype")
public class ChildTransferAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	@Autowired 
	private ChildTransferService childTransferService;
	
	@Autowired
	private LamaNivasaService lamaNivasaService;
	
	@Autowired
	private ChildService childService;

	private String childId;
	private Child child;
	private ChildTransfer childTransfer;
	private List<ChildTransfer> list;
	private List<LamaNivasa> lamaNivasaList;
	

	
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
		child = childService.findById(childId);
		addMode();
		addPopulate();
		return SUCCESS;
	}
	
	public String search() {
		if(childId != null) {
			list = childTransferService.findByChildId(childId);
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
		
		if(childTransfer != null) {
			validateChildTransfer();
			if(hasErrors()) {
				return INPUT;
			} else {
				if(operationMode == OPERATION_MODE.ADD && childTransfer.getId().isEmpty()) {
					setAddSettings(childTransfer);
					childTransfer = childTransferService.save(childTransfer);
				} else if (operationMode == OPERATION_MODE.EDIT && !childTransfer.getId().isEmpty() ) {
					setUpdateSettings(childTransfer);
					childTransferService.update(childTransfer);
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
			childTransfer = childTransferService.findById(id);
			childId = childTransfer.getChild().getId();
			if(childTransfer == null) {
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
			childTransferService.delete(id);
			return list();
		}
		
	}
	
	private void searchPopulate() {
		
	}
	
	private void addPopulate() {
		lamaNivasaList = lamaNivasaService.findAll();
	}
	
	private void validateChildTransfer() {
	/*	if(childTransfer.getToLamaNivasaId().getName().isEmpty()) {
			addFieldError("childGuardian.name", "Name cannot be empty");
		}*/
	}

	public String getChildId() {
		return childId;
	}

	public void setChildId(String childId) {
		this.childId = childId;
	}

	public ChildTransfer getChildTransfer() {
		return childTransfer;
	}

	public void setChildGuardian(ChildTransfer childTransfer) {
		this.childTransfer = childTransfer;
	}

	public List<ChildTransfer> getList() {
		return list;
	}

	public void setList(List<ChildTransfer> list) {
		this.list = list;
	}

	public List<LamaNivasa> getLamaNivasaList() {
		return lamaNivasaList;
	}

	public void setLamaNivasaList(List<LamaNivasa> lamaNivasaList) {
		this.lamaNivasaList = lamaNivasaList;
	}

	public Child getChild() {
		return child;
	}

	public void setChild(Child child) {
		this.child = child;
	}
}
