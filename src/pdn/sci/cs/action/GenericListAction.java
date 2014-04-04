package pdn.sci.cs.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.GenericCategory;
import pdn.sci.cs.entity.GenericList;
import pdn.sci.cs.service.GenericCategoryService;
import pdn.sci.cs.service.GenericListService;

@Scope(value = "prototype")
public class GenericListAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	@Autowired private GenericListService genericListService;
	@Autowired private GenericCategoryService genericCategoryService;
	
	private String generericCategoryId;
	private GenericList genericList;
	private List<GenericList> genericLists;
	private List<GenericCategory> genericCategories;

	public String add() {
		addSettings();
		return SUCCESS;
	}
	
	public String edit() {
		editSettings();
		
		if(hasErrors()) {
			return INPUT;
		}
		return SUCCESS;
	}
	
	public String view() {
		if(!id.isEmpty()) {
			this.genericList = genericListService.findById(id);
			
			if(this.genericList == null) {
				addActionError("Invalid selection");
			}
		} else {
			addActionError("Invalid item selected, there is no such item in the list");
		}
		return SUCCESS;
	}
	
	public String save() {
		
		if(genericList == null) {
			return INPUT;
		}
		
		validateCategory();
		
		if(hasErrors()) {
			saveReturnWhenError();
			return INPUT;
		}
		
		if(genericList != null && genericList.getId().isEmpty() && operationMode == OPERATION_MODE.ADD ) {
			addMode();
			setAddSettings(genericList);
			genericList = genericListService.save(genericList);
		} else if(genericList != null  && operationMode == OPERATION_MODE.EDIT && !genericList.getId().isEmpty()) {
			editMode();
			setUpdateSettings(genericList);
			genericListService.update(genericList);
		} else {
			saveReturnWhenError();
			return INPUT;
		}
		
		return SUCCESS;
	}
	
	public String delete() {
		
		if(!id.isEmpty()) {
			genericListService.delete(id);
			
			return list();
		} else {
			addActionError("Invalid item selected, there is no such item in the list");
		}
		return SUCCESS;
	}
	
	public String list() {
		this.genericLists = genericListService.findListByCategoryId(generericCategoryId);
		
		if(this.genericLists == null || this.genericLists.size() == 0) {
			addActionError("There is no corresponding items in the list");
		}
		return SUCCESS;
	}
	
	private void validateCategory() {
		
		if(getOperationMode().equals(OPERATION_MODE.EDIT)) {
			if(this.genericList.getId().isEmpty()) {
				addActionError("Invalid Access, no ID assigned");
			} 
			
		}
		
		if(this.genericList.getListKey().isEmpty()) {
			addFieldError("genericList.listKey", "List Key cannot be empty");
		} 
		
		if(this.genericList.getListValue().isEmpty()) {
			addFieldError("genericList.listValue", "List Value cannot be empty");
		} 
		
		if(this.genericList.getSortOrder() == null || this.genericList.getSortOrder() == 0) {
			addFieldError("genericList.sortOrder", "Category name cannot be empty or zero");
		}
		
	}
	
	private void addSettings() {
		addMode();
		if(generericCategoryId != null) {
			genericList = new GenericList();
			genericList.setGenericCategory(new GenericCategory(generericCategoryId));
		}
		genericCategories = genericCategoryService.findAll();
	}
	
	private void editSettings() {
		editMode();
		genericCategories = genericCategoryService.findAll();
		if(!id.isEmpty()) {
			this.genericList = genericListService.findById(id);
			
			if(this.genericList == null) {
				addActionError("Invalid selection");
			}
		} else {
			addActionError("Invalid item selected, there is no such item in the list");
		}
	}
	
	private void saveReturnWhenError() {
		if(operationMode == OPERATION_MODE.ADD) {
			addSettings();
		} else if(operationMode == OPERATION_MODE.EDIT) {
			editSettings();
		}
	}

	public GenericList getGenericList() {
		return genericList;
	}

	public void setGenericList(GenericList genericList) {
		this.genericList = genericList;
	}

	public List<GenericList> getGenericLists() {
		return genericLists;
	}

	public void setGenericLists(List<GenericList> genericLists) {
		this.genericLists = genericLists;
	}

	public String getGenerericCategoryId() {
		return generericCategoryId;
	}

	public void setGenerericCategoryId(String generericCategoryId) {
		this.generericCategoryId = generericCategoryId;
	}

	public List<GenericCategory> getGenericCategories() {
		return genericCategories;
	}

	public void setGenericCategories(List<GenericCategory> genericCategories) {
		this.genericCategories = genericCategories;
	}
	
}
