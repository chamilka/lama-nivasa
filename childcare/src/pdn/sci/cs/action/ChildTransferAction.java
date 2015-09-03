package pdn.sci.cs.action;

import java.util.Calendar;
import java.util.List;

import javax.swing.text.AsyncBoxView.ChildState;

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
	private LamaNivasa lamaNivasa;
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
		view();
		child = childService.findById(childId);
		addPopulate();
		return SUCCESS;
	}
	
	public String save() {
		
		if(childTransfer != null) {
			validateChildTransfer();
			if(hasErrors()) {
				return INPUT;
			} else {
				if(operationMode == OPERATION_MODE.ADD && childTransfer.getId().isEmpty()) {
					
					if(childTransferService.findActiveTransferByChildId(childTransfer.getChild().getId()) > 0 ) {
						addActionError("Error... Still pending transfers for this child.");
						return INPUT;
						
					}else{
					child = childService.findById(childTransfer.getChild().getId());
					childTransfer.setFromLamaNivasaId(child.getLamaNivasa());
					setAddSettings(childTransfer);
					childTransfer = childTransferService.save(childTransfer);
					childId = child.getId();
					list();
					}
					
				} else if (operationMode == OPERATION_MODE.EDIT && !childTransfer.getId().isEmpty() ) {
					child = childService.findById(childTransfer.getChild().getId());
					childTransfer.setFromLamaNivasaId(child.getLamaNivasa());
					setUpdateSettings(childTransfer);
					childTransferService.update(childTransfer);
					childId = child.getId();
					list();
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
	
	public String unconfirmedList() {
		if (!(isAdminOrMinistry())) {
			String referenceId = getSessionUser().getReferenceId();
			// pageSize = 4 *SEARCH_PAGE_SIZE;

			if (referenceId == null) {
				return INPUT;
			} else {

				try {
					pager = childTransferService.findAllUnconfirmedByProbationUnitId(referenceId, pageStart, pageSize);
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
	
	public String confirm(){
		if (childId == null || childId.isEmpty()) {
			addActionError("Invalid Access");
			return INPUT;
		} else {
			editMode();
			childTransfer = childTransferService.findByIdChildID(childId);
			if (childTransfer != null && childTransfer.getStatus() == TRANSFER_UNCONFIRMED_STATE) {
				 if (operationMode == OPERATION_MODE.EDIT) {
					 	setChild(childTransfer.getChild());
						child.setLamaNivasa(childTransfer.getToLamaNivasaId());
						childTransfer.setStatus(TRANSFER_CONFIRMED_STATE);
						childTransfer.setTransferDate(Calendar.getInstance());
						
						setUpdateSettings(child);
						setUpdateSettings(childTransfer);
						childService.update(child);
						childTransferService.update(childTransfer);
						
						unconfirmedList();
						return SUCCESS;
				 }else{
					 return INPUT;
				 }
			}
			else{
				addActionError("That Transfer is confirmed or rejected by another.");
				return INPUT;
			}
		}
		
	}
	/*public String confirm(){
		if (id == null || id.isEmpty()) {
			addActionError("Invalid Access");
			return INPUT;
		} else {
			editMode();
			childTransfer = childTransferService.findById(id);
			if (childTransfer != null && childTransfer.getStatus() == TRANSFER_UNCONFIRMED_STATE) {
				 if (operationMode == OPERATION_MODE.EDIT) {
					 	setChild(childTransfer.getChild());
						child.setLamaNivasa(childTransfer.getToLamaNivasaId());
						childTransfer.setStatus(TRANSFER_CONFIRMED_STATE);
						childTransfer.setTransferDate(Calendar.getInstance());
						
						setUpdateSettings(child);
						setUpdateSettings(childTransfer);
						childService.update(child);
						childTransferService.update(childTransfer);
						
						unconfirmedList();
						return SUCCESS;
				 }else{
					 return INPUT;
				 }
			}
			else{
				addActionError("That Transfer is confirmed or rejected by another.");
				return INPUT;
			}
		}
		
	}*/
	
	public String notConfirm(){
		if (id == null || id.isEmpty()) {
			addActionError("Invalid Access");
			return INPUT;
		} else {
			editMode();
			childTransfer = childTransferService.findByIdChildID(childId);
			if (childTransfer != null && childTransfer.getStatus() == TRANSFER_UNCONFIRMED_STATE) {
				 if (operationMode == OPERATION_MODE.EDIT) {
						childTransfer.setStatus(TRANSFER_NOT_ACCEPTED);
						childTransfer.setTransferDate(Calendar.getInstance());
						
						setUpdateSettings(childTransfer);
						childTransferService.update(childTransfer);
						
						unconfirmedList();
						return SUCCESS;
				 }else{
					 return INPUT;
				 }
			}
			else{
				addActionError("That Transfer is confirmed or rejected by another.");
				return INPUT;
			}
		}
		
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
			childTransfer = childTransferService.findById(id);
			childId = childTransfer.getChild().getId();
			childTransferService.delete(id);
			list();
			return SUCCESS;
		}
		
	}
	
	private void searchPopulate() {
		
	}
	
	private void addPopulate() {
		lamaNivasaList = lamaNivasaService.findAll();
	}
	
	private void validateChildTransfer() {
		if(childTransfer.getToLamaNivasaId().getId().isEmpty() || childTransfer.getToLamaNivasaId().getId() == null) {
			addFieldError("childTransfer.toLamaNivasaId.id", "New Children Home cannot be empty");
		}
		
		if(childTransfer.getReason().isEmpty() || childTransfer.getReason() == null){
			addFieldError("childTransfer.reason", "Reason Cannot be empty");
		}
		
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

	public void setChildTransfer(ChildTransfer childTransfer) {
		this.childTransfer = childTransfer;
	}

	public LamaNivasa getLamaNivasa() {
		return lamaNivasa;
	}

	public void setLamaNivasa(LamaNivasa lamaNivasa) {
		this.lamaNivasa = lamaNivasa;
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
