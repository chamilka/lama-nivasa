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
	
	@Autowired private SystemUserService systemUserService;
	
	public String signIn() {
		
		System.out.println("Username " + username);
		System.out.println("Password " + password);
		
		if(username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")){
			if(session != null) {
				session.put(SessionKey.USER_TYPE, "ADMIN");
			} else {
				System.out.println("SESSION IS NULL");
			}
			return SUCCESS;
			
		} else {
			session.put(SessionKey.USER_TYPE, "POWER");
			return SUCCESS;
		}
				
	}
	
	public String signOut() {
		
		session.remove(SessionKey.SESSION_USER);
		session.remove(SessionKey.USER_TYPE);
		session.remove(SessionKey.SYSTEM_ADMIN);
		return SUCCESS;
			
	}
	
	public String passwordChange() {
		
		SystemUser user = getUser();
		
		if(!newUserPassword.equals(newUserPasswordConfirm)) {
			addActionError("New passwords are not matched");
			return INPUT;
		} else if(!user.getUserPassword().equals(oldUserPassword)) {
			addActionError("Old password mismatch");
			return INPUT;
		}
		
		user = systemUserService.findById(user.getId());
		
		user.setUserPassword(newUserPassword);
		
		systemUserService.save(user);
		session.put(SessionKey.SESSION_USER, user);
		return SUCCESS;
	}
	
	public String passwordForgot() {
		System.out.println("Search Key : " + search);
		
		return SUCCESS;
	}
	
	public String list(){
		populateList();
		return SUCCESS;
	}
	
	private void populateList() {
		list=systemUserService.findAll();
	}

public String view() {
		
		if(id == null || id.isEmpty()) {
			addActionError("Invalid Access");
			return INPUT;
		} else {
			user = systemUserService.findById(id);
			if(user == null) {
				addActionError("Item that your are searching could not be found");
			}
		}
		return SUCCESS;
	}
	
	public String profileEdit() {
		search = "Vajira";
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


	
	
	

}
