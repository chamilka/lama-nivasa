package pdn.sci.cs.action;

import java.util.List;
import java.util.regex.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.LamaNivasa;
import pdn.sci.cs.entity.ProbationUnit;
import pdn.sci.cs.entity.SessionKey;
import pdn.sci.cs.entity.SystemUser;
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

	private SystemUser user;
	private SystemUser systemUser;

	@Autowired private SystemUserService systemUserService;
	@Autowired private LamaNivasaService lamaNivasaService;
	@Autowired private ProbationUnitService probationUnitService;

	public String signIn() {

		validateSignIn();
		if (hasErrors()) {
			return INPUT;
		} else {
			user = systemUserService.signIn(username, password);
			if (user == null) {
				addActionError("Invalid username and/or password");
				return INPUT;
			} else {
				if (session != null) {
					session.put(SessionKey.USER_TYPE, user.getUserRole());
					session.put(SessionKey.SESSION_USER, user);
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
			//validateUser();
			if (hasErrors()) {
				return INPUT;
			} else {
				if (operationMode == OPERATION_MODE.ADD
						&& systemUser.getId().isEmpty()) {
					setAddSettings(systemUser);
					systemUser = systemUserService.save(systemUser);
				} else if (operationMode == OPERATION_MODE.EDIT
						&& !systemUser.getId().isEmpty()) {
					SystemUser existingUser = systemUserService.findById(systemUser
							.getId());
					systemUser.setUserPassword(existingUser.getUserPassword()); // set
																			// password
					setUpdateSettings(systemUser);
					try {
						systemUserService.update(systemUser);
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
		System.out.println("Search Key : " + search);

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
	}
	
	public String edit() {
		editMode();
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
		if (systemUser.getUsername().isEmpty()) {
			addFieldError("systemUser.username", "Username cannot be empty");
		}

		if (operationMode != OPERATION_MODE.EDIT) {
			if (systemUser.getUserPassword().isEmpty()) {
				addFieldError("systemUser.userPassword", "Password cannot be empty");
			}
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

		if (check == false)
			addFieldError("user.email", "Invalid email adress");
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
			addFieldError("user.mobile", "Number must have 10 digit numbers");
		}

	}

	public String view() {

		if (id == null || id.isEmpty()) {
			addActionError("Invalid Access");
			return INPUT;
		} else {
			user = systemUserService.findById(id);
			if (user == null) {
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
		System.out.println("\n\n\n\n called");
		if (systemUser != null) {
			System.out.println("\n\n\n\n called 2");
			/*
			 * validateMobile(user.getMobile()); if (hasErrors()) { return
			 * INPUT; }
			 */

			try {
				if(systemUserService != null) {
					System.out.println("\n\n\n\n called 2");
				}
				
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
		user = systemUserService.findById(super.getSessionUser().getId());
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

	public SystemUser getUser() {
		return user;
	}

	public void setUser(SystemUser user) {
		this.user = user;
	}
	
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
	
	

}
