package pdn.sci.cs.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.PoliceStation;
import pdn.sci.cs.entity.SessionKey;
import pdn.sci.cs.service.PoliceStationService;

@Scope(value = "prototype")
public class PoliceAction extends BaseAction {

  private static final long serialVersionUID = 1L;

  private String search;
  private List<PoliceStation> list;
  private PoliceStation policeStation;

  @Autowired
  private PoliceStationService policeStationService;

  public String save() {

    if (policeStation != null) {
      validatePolice();
      if (hasErrors()) {
        populateAddList();
        return INPUT;
      } else {
        if (operationMode == OPERATION_MODE.ADD && policeStation.getId().isEmpty()) {
          setAddSettings(policeStation);
          policeStation = policeStationService.save(policeStation);
        } else if (operationMode == OPERATION_MODE.EDIT && !policeStation.getId().isEmpty()) {

          setUpdateSettings(policeStation);
          try {
            if (getSessionUser().getId().equals(policeStation.getId())) {
              policeStationService.merge(policeStation);
              session.put(SessionKey.SESSION_USER, policeStation);

            } else {
              policeStationService.update(policeStation);
            }
          } catch (Exception e) {
            e.printStackTrace();
            addActionError("Profile was not updated, try again");
            populateAddList();
            return INPUT;
          }
        } else {
          addActionError("Error");
          populateAddList();
          return INPUT;
        }
      }
    } else {
      addActionError("Invalid Access");
      return INPUT;
    }
    return SUCCESS;
  }

  private void validatePolice() {
    if(policeStation.getName().isEmpty()) {
      addActionError("Name cannot be empty");
    }
  }

  public String frame() {
    return SUCCESS;
  }

  public String add() {
    addMode();
    populateAddList();
    return SUCCESS;
  }

  private void populateAddList() {

  }

  public String edit() {
    editMode();
    populateAddList();
    return view();
  }

  public String list() {
    populateList();
    return SUCCESS;
  }

  private void populateList() {
    list = policeStationService.findAll();
    targetDiv = "policeList";
    //setActionContext(pager);
  }

  public String delete() {
    if (this.id.isEmpty()) {
      addActionError("Could not delete the entry, id is missing");
      return INPUT;
    } else {
      try {
        policeStationService.delete(id);
      } catch (Exception e) {
        e.printStackTrace();
      }
      return list();
    }
  }

  public String view() {

    if (id == null || id.isEmpty()) {
      addActionError("Invalid Access");
      return INPUT;
    } else {
      policeStation = policeStationService.findById(id);
      if (policeStation == null) {
        addActionError("Item that your are searching could not be found");
      }
    }
    return SUCCESS;
  }

  public String searchForm() {
    populateAddList();
    return SUCCESS;
  }

  public String search() {
    if (policeStation != null) {
      try {
        list = policeStationService.search(policeStation);
      } catch (Exception e) {
        populateAddList();
        addActionError("Please give a criteria about user");
      }
    } else {
      populateAddList();
      addActionError("Please give a criteria about user");
    }

    return SUCCESS;
  }

  public String homeView() {
    return SUCCESS;
  }

  public String eventView() {
    return SUCCESS;
  }

  public String getSearch() {
    return search;
  }

  public void setSearch(String search) {
    this.search = search;
  }

  public List<PoliceStation> getList() {
    return list;
  }

  public void setList(List<PoliceStation> list) {
    this.list = list;
  }

  public PoliceStation getPoliceStation() {
    return policeStation;
  }

  public void setPoliceStation(PoliceStation policeStation) {
    this.policeStation = policeStation;
  }
  
  

}
