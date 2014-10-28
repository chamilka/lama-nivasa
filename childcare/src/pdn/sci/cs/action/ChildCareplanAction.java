package pdn.sci.cs.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.ChildCareplan;
import pdn.sci.cs.entity.GenericList;
import pdn.sci.cs.service.ChildCareplanService;
import pdn.sci.cs.service.GenericListService;

@Scope(value = "prototype")
public class ChildCareplanAction extends BaseAction {

  private static final long serialVersionUID = 1L;

  @Autowired
  private ChildCareplanService childCareplanService;

  @Autowired
  private GenericListService genericListService;

  private List<GenericList> careplanCategories;
  private String childId;
  private ChildCareplan childCareplan;
  private List<ChildCareplan> list;

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
    if (childId != null) {
      list = childCareplanService.findByChildId(childId);
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

    if (childCareplan != null) {
      validateChild();
      if (hasErrors()) {
    	  childId = childCareplan.getChild().getId();
    	  addPopulate();
        return INPUT;
      } else {
        if (operationMode == OPERATION_MODE.ADD && childCareplan.getId().isEmpty()) {
          setAddSettings(childCareplan);
          childCareplan = childCareplanService.save(childCareplan);
        } else if (operationMode == OPERATION_MODE.EDIT && !childCareplan.getId().isEmpty()) {
          setUpdateSettings(childCareplan);
          childCareplanService.update(childCareplan);
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

    if (id == null || id.isEmpty()) {
      addActionError("Invalid Access");
      return INPUT;
    } else {
      childCareplan = childCareplanService.findById(id);
      childId = childCareplan.getChild().getId();
      if (childCareplan == null) {
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
      childCareplanService.delete(id);
      return list();
    }

  }

  private void searchPopulate() {

  }

  private void addPopulate() {
    careplanCategories = genericListService.findListByCategoryId("C080");
  }

  private void validateChild() {
    if (childCareplan.getPreNote() == null || childCareplan.getPreNote().isEmpty()) {
      addFieldError("childCareplan.preNote", "Pre-note cannot be empty");
    }

    if (childCareplan.getDateStart() == null) {
      addFieldError("childCareplan.dateStart", "Start date cannot be empty");
    }
    
    if (childCareplan.getDateEnd() == null) {
        addFieldError("childCareplan.dateEnd", "End date cannot be empty");
      }
  }

  public String getChildId() {
    return childId;
  }

  public void setChildId(String childId) {
    this.childId = childId;
  }

  public ChildCareplan getChildCareplan() {
    return childCareplan;
  }

  public void setChildCareplan(ChildCareplan childCareplan) {
    this.childCareplan = childCareplan;
  }

  public List<ChildCareplan> getList() {
    return list;
  }

  public void setList(List<ChildCareplan> list) {
    this.list = list;
  }

  public List<GenericList> getCareplanCategories() {
    return careplanCategories;
  }

  public void setCareplanCategories(List<GenericList> careplanCategories) {
    this.careplanCategories = careplanCategories;
  }

}
