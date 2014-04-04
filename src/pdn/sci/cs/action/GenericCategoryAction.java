package pdn.sci.cs.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.GenericCategory;
import pdn.sci.cs.service.GenericCategoryService;

@Scope("prototype")
public class GenericCategoryAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	@Autowired private GenericCategoryService genericCategoryService;
	
	private List<GenericCategory> genericCategoryList;
	private GenericCategory genericCategory;
	
	public String viewFrame() {
		return SUCCESS;
	}
	
	public String list() {
		populateList();
		return SUCCESS;
	}
	
	public String add() {
		addMode();
		return SUCCESS;
	}
	
	public String view() {
		
		if(this.id.isEmpty()) {
			return INPUT;
		} else {
			genericCategory = genericCategoryService.findById(id);
			if(genericCategory == null) {
				addActionError("Category Not Found");
				return INPUT;
			} 
		}
		
		return SUCCESS;
	}
	
	public String save() {
		if(genericCategory != null) {
			validateCategory();
			
			if(hasErrors()) {
				return INPUT;
			}
			
			if(operationMode == OPERATION_MODE.ADD && genericCategory.getId().isEmpty()) {
				setAddSettings(genericCategory);
				genericCategory = genericCategoryService.save(genericCategory);
				
			} else if (operationMode == OPERATION_MODE.EDIT && !genericCategory.getId().isEmpty() ) {
				setUpdateSettings(genericCategory);
				genericCategoryService.update(genericCategory);
			} else {
				return INPUT;
			}
			return SUCCESS;
		} else {
			return INPUT;
		}
		
	}
	
	public String edit() {
		editMode();
		return view();
	}
	
	public String delete() {
		if(this.id.isEmpty()) {
			addActionError("Could not delete the entry, id is missing");
			return INPUT;
		} else {
			genericCategoryService.delete(id);
			return list();
		}
		
	}
	
	private void populateList() {
		genericCategoryList = genericCategoryService.findAll();
	}
	
	private void validateCategory() {
		if(getOperationMode().equals(OPERATION_MODE.EDIT)) {
			if(this.genericCategory.getCategory().isEmpty()) {
				addActionError("Invalid Access, no ID assigned");
			} 
			
		}
		
		if(this.genericCategory.getCategory().isEmpty()) {
			addFieldError("genericCategory.category", "Category name cannot be empty");
		} 
		
		if(this.genericCategory.getSortOrder() == null || this.genericCategory.getSortOrder() == 0) {
			addFieldError("genericCategory.sortOrder", "Category name cannot be empty or zero");
		}
		
	}

	public GenericCategory getGenericCategory() {
		return genericCategory;
	}

	public void setGenericCategory(GenericCategory genericCategory) {
		this.genericCategory = genericCategory;
	}

	public List<GenericCategory> getGenericCategoryList() {
		return genericCategoryList;
	}

	public void setGenericCategoryList(List<GenericCategory> genericCategoryList) {
		this.genericCategoryList = genericCategoryList;
	}
	
}
