package pdn.sci.cs.action;

import java.util.List;
import java.util.regex.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.GenericList;
import pdn.sci.cs.entity.LamaNivasa;
import pdn.sci.cs.entity.ProbationUnit;
import pdn.sci.cs.entity.SessionKey;
import pdn.sci.cs.entity.SystemUser;
import pdn.sci.cs.service.GenericListService;
import pdn.sci.cs.service.LamaNivasaService;
import pdn.sci.cs.service.ProbationUnitService;
import pdn.sci.cs.service.SystemUserService;

@Scope(value = "prototype")
public class UserAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	private String username;
	private String password;
	private String search;

	private String oldUserPassword;
	private String newUserPassword;
	private String newUserPasswordConfirm;

	private List<SystemUser> list;
	private List<ProbationUnit> probationUnitList;
	private List<LamaNivasa> lamaNivasaList;
	private List<GenericList> postCategoryList;
	private List<GenericList> provinceList;

	//private SystemUser user;
	private SystemUser systemUser;
	private String addType = "USER";  //ADMIN, OFFICER

	@Autowired private SystemUserService systemUserService;
	@Autowired private LamaNivasaService lamaNivasaService;
	@Autowired private ProbationUnitService probationUnitService;
	@Autowired private GenericListService genericListService;

	public String signIn() {

		validateSignIn();
		if (hasErrors()) {
			return INPUT;
		} else {
			systemUser = systemUserService.signIn(username, password);
			if (systemUser == null) {
				addActionError("Invalid username and/or password");
				return INPUT;
			} else {
				if (session != null) {
					session.put(SessionKey.USER_TYPE, systemUser.getUserRole());
					session.put(SessionKey.SESSION_USER, systemUser);
					return SUCCESS;
				} else {
					addActionError("Session has been expired");
					return INPUT;
				}
			}
		}
	}

	public String signOut() {
		if (session != null) {
			session.remove(SessionKey.SESSION_USER);
			session.remove(SessionKey.USER_TYPE);
			session.remove(SessionKey.SYSTEM_ADMIN);
		}

		return SUCCESS;

	}

	public String changePasswordForm() {
		return changeProfileForm();
	}

	public String passwordChangeSave() {

		SystemUser user = super.getSessionUser();

		if (!newUserPassword.equals(newUserPasswordConfirm)) {
			addActionError("New passwords are not matched");
			return INPUT;
		} else if (!user.getUserPassword().equals(oldUserPassword)) {
			addActionError("Old password mismatch");
			return INPUT;
		}

		user = systemUserService.findById(user.getId());
		user.setUserPassword(newUserPassword);

		systemUserService.save(user);
		session.put(SessionKey.SESSION_USER, user);
		addActionError("Password changed");
		return SUCCESS;
	}

	public String save() {

		if (systemUser != null) {
			validateUser();
			if (hasErrors()) {
				populateAddList();
				return INPUT;
			} else {
				if (operationMode == OPERATION_MODE.ADD	&& systemUser.getId().isEmpty()) {
					setAddSettings(systemUser);
					systemUser = systemUserService.save(systemUser);
				} else if (operationMode == OPERATION_MODE.EDIT
						&& !systemUser.getId().isEmpty()) {

					if(systemUser.getUserPassword() == null || systemUser.getUserPassword().isEmpty()) {
						SystemUser existingUser = systemUserService.findById(systemUser.getId());
						systemUser.setUserPassword(existingUser.getUserPassword()); // set password
					}

					setUpdateSettings(systemUser);
					try {
						if(getSessionUser().getId().equals(systemUser.getId())) {
							systemUserService.merge(systemUser);
							session.put(SessionKey.SESSION_USER, systemUser);

						} else {
							systemUserService.update(systemUser);
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


	public String passwordForgot() {
		return SUCCESS;
	}

	public String frame() {
		return SUCCESS;
	}

	public String add() {
		addMode();
		populateAddList();
		return SUCCESS;
	}

	private void populateAddList(){
		lamaNivasaList= lamaNivasaService.findAll();
		probationUnitList= probationUnitService.findAll();
		provinceList = genericListService.findListByCategoryId("C022");
		if(addType.equalsIgnoreCase("User")) {
			postCategoryList = genericListService.findListByCategoryId("C018");
		} else if(addType.equalsIgnoreCase("Officer")) {
			postCategoryList = genericListService.findListByCategoryId("C019");
		} else {
			postCategoryList = genericListService.findListByCategoryId("C021");
		}
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

/*	private void populateList() {
		list = systemUserService.findAll();
	}
*/
	private void populateList() {
		pager = systemUserService.findAll(pageStart, pageSize);
		targetDiv = "userList";
		setActionContext(pager);
	}



	private void validateSignIn() {
		if (username == null || username.isEmpty()) {
			addFieldError("username", "Username cannot be empty");
		}

		if (password == null || password.isEmpty()) {
			addFieldError("password", "Password cannot be empty");
		}
	}

	private void validateUser() {
		if (systemUser.getUsername().isEmpty() || systemUser.getUsername().trim().length() == 0) {
			addFieldError("systemUser.username", "Username cannot be empty");
		}

		if (systemUser.getName().isEmpty() || systemUser.getName().trim().length() == 0) {
			addFieldError("systemUser.name", "Name cannot be empty");
		}

		if(!systemUser.getUserRole().equals(SystemUser.USER_ROLE.ADMIN.name())) {
			if (systemUser.getReferenceId() == null || systemUser.getReferenceId().isEmpty() ||
					systemUser.getReferenceId().trim().length() == 0) {
				addFieldError("systemUser.referenceId", "Please select your work location");
			}
		}

		if (operationMode != OPERATION_MODE.EDIT) {
			if(systemUserService.searchByUsername(systemUser.getUsername()) != null) {
				addFieldError("systemUser.username", "Username not available");
			}
			if (systemUser.getUserPassword().isEmpty()) {
				addFieldError("systemUser.userPassword", "Password cannot be empty");
			}
		}
	}
	
	public String delete() {
		if(this.id.isEmpty()) {
			addActionError("Could not delete the entry, id is missing");
			return INPUT;
		} else {
			try {
				systemUserService.delete(id);
			} catch(Exception e) {
				e.printStackTrace();
			}
			return list();
		}
	}

	public void validateEmail(String email) {

		Pattern pattern;
		Matcher matcher;
		boolean check;
		final String emailPattern = "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

		pattern = Pattern.compile(emailPattern);
		matcher = pattern.matcher(email);
		check = matcher.matches();

		if (check == false) {
			addFieldError("systemUser.email", "Invalid email adress");
		}
	}

	public void validateMobile(String mobile) {

		Pattern pattern;
		Matcher matcher;
		boolean check;
		final String mobilePattern = "\\d{3}";

		pattern = Pattern.compile(mobilePattern);
		matcher = pattern.matcher(mobile);
		check = matcher.matches();

		if (check == false) {
			addFieldError("systemUser.mobile", "Number must have 10 digit numbers");
		}

	}

	public String view() {

		if (id == null || id.isEmpty()) {
			addActionError("Invalid Access");
			return INPUT;
		} else {
			systemUser = systemUserService.findById(id);
			if (systemUser == null) {
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
		if (systemUser != null) {

			try {
				pageSize = SEARCH_PAGE_SIZE;
				pager = systemUserService.search(systemUser.getName(), systemUser.getUserRole(),
						systemUser.getReferenceId(), systemUser.getMobile(), pageStart, pageSize);
			} catch (Exception e) {
				e.printStackTrace();
				populateAddList();
				addActionError("Please give a criteria about user");
			}
		} else {
			populateAddList();
			addActionError("Please give a criteria about user");
		}

		return SUCCESS;
	}

	public String changeProfileForm() {
		editMode();
		systemUser = systemUserService.findById(super.getSessionUser().getId());
		return SUCCESS;
	}

	public String homeView() {
		return SUCCESS;
	}

	public String eventView() {
		return SUCCESS;
	}

	public String primaryInfoView() {
		return SUCCESS;
	}

	public String monthlyInfoView() {
		return SUCCESS;
	}

	public String accountView() {
		return SUCCESS;
	}

	public String contactUsView() {
		return SUCCESS;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String getOldUserPassword() {
		return oldUserPassword;
	}

	public void setOldUserPassword(String oldUserPassword) {
		this.oldUserPassword = oldUserPassword;
	}

	public String getNewUserPassword() {
		return newUserPassword;
	}

	public void setNewUserPassword(String newUserPassword) {
		this.newUserPassword = newUserPassword;
	}

	public String getNewUserPasswordConfirm() {
		return newUserPasswordConfirm;
	}

	public void setNewUserPasswordConfirm(String newUserPasswordConfirm) {
		this.newUserPasswordConfirm = newUserPasswordConfirm;
	}

	public List<SystemUser> getList() {
		return list;
	}

	public void setList(List<SystemUser> list) {
		this.list = list;
	}

	/*public SystemUser getUser() {
		return user;
	}

	public void setUser(SystemUser user) {
		this.user = user;
	}
	*/

	public List<ProbationUnit> getProbationUnitList() {
		return probationUnitList;
	}

	public void setProbationUnitList(List<ProbationUnit> probationUnitList) {
		this.probationUnitList = probationUnitList;
	}

	public List<LamaNivasa> getLamaNivasaList() {
		return lamaNivasaList;
	}

	public void setLamaNivasaList(List<LamaNivasa> lamaNivasaList) {
		this.lamaNivasaList = lamaNivasaList;
	}

	public SystemUser getSystemUser() {
		return systemUser;
	}

	public void setSystemUser(SystemUser systemUser) {
		this.systemUser = systemUser;
	}

	public String getAddType() {
		return addType;
	}

	public void setAddType(String addType) {
		this.addType = addType;
	}

	public List<GenericList> getPostCategoryList() {
		return postCategoryList;
	}

	public void setPostCategoryList(List<GenericList> postCategoryList) {
		this.postCategoryList = postCategoryList;
	}

  public List<GenericList> getProvinceList() {
    return provinceList;
  }

  public void setProvinceList(List<GenericList> provinceList) {
    this.provinceList = provinceList;
  }
	

}
