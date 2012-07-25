package pdn.sci.cs.action;

import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.ChildPicture;
import pdn.sci.cs.service.ChildPictureService;

@Scope(value = "prototype")
public class ChildPictureAction extends BaseSingleFileUpload {

	private static final long serialVersionUID = 1L;
	
	@Autowired private ChildPictureService childPictureService;

	private String childId;
	private ChildPicture childPicture;
	private List<ChildPicture> list;

	
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
			list = childPictureService.findByChildId(childId);
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
		System.out.println(getFileUploadFileName());
		System.out.println(getFileUploadContentType());
		System.out.println(childPicture.getComment());
		
		if(childPicture != null) {
			validateChildPicture();
			if(hasErrors()) {
				return INPUT;
			} else {
				if(operationMode == OPERATION_MODE.ADD && childPicture.getId().isEmpty()) {
					setFileProperties();
					setAddSettings(childPicture);
					childPicture = childPictureService.save(childPicture);
				} else if (operationMode == OPERATION_MODE.EDIT && !childPicture.getId().isEmpty() ) {
					setFileProperties();
					setUpdateSettings(childPicture);
					childPictureService.update(childPicture);
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
	
	private void setFileProperties() {
		childPicture.setFileName(getFileUploadFileName());
		childPicture.setFileType(getFileUploadContentType());
		try {
			childPicture.setFileContent(FileUtils.readFileToByteArray(getFileUpload()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public String view() {
		
		if(id == null || id.isEmpty()) {
			addActionError("Invalid Access");
			return INPUT;
		} else {
			childPicture = childPictureService.findById(id);
			childId = childPicture.getChild().getId();
			if(childPicture == null) {
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
			childPictureService.delete(id);
			return list();
		}
		
	}
	
	private void searchPopulate() {
		
	}
	
	private void addPopulate() {
		
	}
	
	private void validateChildPicture() {
		if(getFileUploadFileName().isEmpty()) {
			addFieldError("childPicture.fileName", "File Name Cannot Be Empty");
		}
	}

	public String getChildId() {
		return childId;
	}

	public void setChildId(String childId) {
		this.childId = childId;
	}

	public ChildPictureService getChildPictureService() {
		return childPictureService;
	}

	public void setChildPictureService(ChildPictureService childPictureService) {
		this.childPictureService = childPictureService;
	}

	public ChildPicture getChildPicture() {
		return childPicture;
	}

	public void setChildPicture(ChildPicture childPicture) {
		this.childPicture = childPicture;
	}

	public List<ChildPicture> getList() {
		return list;
	}

	public void setList(List<ChildPicture> list) {
		this.list = list;
	}
	
	
}
