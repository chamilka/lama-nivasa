package pdn.sci.cs.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.SessionKey;
import pdn.sci.cs.entity.SystemUser;
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

	private SystemUser user;

	@Autowired
	private SystemUserService systemUserService;

	public String signIn() {

		System.out.println("Username " + username);
		System.out.println("Password " + password);
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

		SystemUser user = super.getUser();

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

		if (user != null) {
			validateUser();
			if (hasErrors()) {
				return INPUT;
			} else {
				if (operationMode == OPERATION_MODE.ADD
						&& user.getId().isEmpty()) {
					setAddSettings(user);
					user = systemUserService.save(user);
				} else if (operationMode == OPERATION_MODE.EDIT
						&& !user.getId().isEmpty()) {
					SystemUser existingUser = systemUserService.findById(user
							.getId());
					user.setUserPassword(existingUser.getUserPassword()); // set
																			// password
					setUpdateSettings(user);
					try {
						systemUserService.update(user);
					} catch (Exception e) {
						e.printStackTrace();
						addActionError("Profile was not updated, try again");
						return INPUT;
					}
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

	public String passwordForgot() {
		System.out.println("Search Key : " + search);

		return SUCCESS;
	}

	public String frame() {
		return SUCCESS;
	}

	public String add() {
		return SUCCESS;
	}

	public String edit() {
		editMode();
		return view();
	}

	public String list() {
		populateList();
		return SUCCESS;
	}

	private void populateList() {
		list = systemUserService.findAll();
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
		if (user.getUsername().isEmpty()) {
			addFieldError("user.username", "Username cannot be empty");
		}

		if (operationMode != OPERATION_MODE.EDIT) {
			if (user.getUserPassword().isEmpty()) {
				addFieldError("user.userPassword", "Password cannot be empty");
			}
		}
	}
	
	public void validateEmail(String email) {
		
	}
	
	public void validateMobile(String mobile){
		
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
		return SUCCESS;
	}

	public String search() {
		if (user != null) {
			String userId = "", userRole = "", email = "", mobile = "";

			if (user.getUsername() == null || user.getUsername().getID().isEmpty()) {
				userId = "";
			} else {
				userId = user.getuserRole();
			}

			if (user.getUserRole() == null || user.getUserRole().isEmpty()) {
				userRole = "";
			} else {
				userRole = user.getuserRole();
			}

			if (user.getEmail() == null || user.getEmail().isEmpty()) {
				email = "";
			} else {
				validateEmail(user.getEmail());
				if (hasErrors())
					return INPUT;
				else
					email = user.getEmail();
			}

			if (user.getMobile() == null || user.getMobile().isEmpty()) {
				mobile = "";
			} else {
				validateMobile(user.getMobile());
				if (hasErrors())
					return INPUT;
				else
					mobile = user.getMobile();
			}

			list = systemUserService.search(userId, userRole, email, mobile);
		} else {
			addActionError("Please give a criteria about user");
		}

		return SUCCESS;
	}

	public String changeProfileForm() {
		editMode();
		System.out.println(super.getUser().getId());

		user = systemUserService.findById(super.getUser().getId());
		System.out.println(user.getEmail());
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

}
