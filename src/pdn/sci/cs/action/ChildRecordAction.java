package pdn.sci.cs.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.ChildRecord;
import pdn.sci.cs.service.ChildRecordService;

@Scope(value = "prototype")
public class ChildRecordAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	@Autowired private ChildRecordService childRecordService;

	private String childId;
	private ChildRecord childRecord;
	private List<ChildRecord> list;


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
			list = childRecordService.findByChildId(childId);
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

		if(childRecord != null) {
			validateChild();
			if(hasErrors()) {
				return INPUT;
			} else {
				if(operationMode == OPERATION_MODE.ADD && childRecord.getId().isEmpty()) {
					setAddSettings(childRecord);
					childRecord = childRecordService.save(childRecord);
				} else if (operationMode == OPERATION_MODE.EDIT && !childRecord.getId().isEmpty() ) {
					setUpdateSettings(childRecord);
					childRecordService.update(childRecord);
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
			childRecord = childRecordService.findById(id);
			childId = childRecord.getChild().getId();
			if(childRecord == null) {
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
			childRecordService.delete(id);
			return list();
		}

	}

	private void searchPopulate() {

	}

	private void addPopulate() {

	}

	private void validateChild() {
		if(childRecord.getRecordDate() == null) {
			addFieldError("childRecord.recordDate", "Record Date cannot be empty");
		}

		if(childRecord.getComment().isEmpty()) {
			addFieldError("childRecord.comment", "Comment cannot be empty");
		}
	}

	public String getChildId() {
		return childId;
	}

	public void setChildId(String childId) {
		this.childId = childId;
	}

	public ChildRecord getChildRecord() {
		return childRecord;
	}

	public void setChildRecord(ChildRecord childRecord) {
		this.childRecord = childRecord;
	}

	public List<ChildRecord> getList() {
		return list;
	}

	public void setList(List<ChildRecord> list) {
		this.list = list;
	}

}
