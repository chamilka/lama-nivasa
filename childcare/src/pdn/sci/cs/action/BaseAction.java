package pdn.sci.cs.action;

import java.util.Calendar;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pdn.sci.cs.entity.BaseEntity;
import pdn.sci.cs.entity.SessionKey;
import pdn.sci.cs.entity.SystemUser;

import com.opensymphony.xwork2.ActionSupport;

public abstract class BaseAction extends ActionSupport implements SessionAware {
	
	public enum OPERATION_MODE {EDIT, ADD, VIEW};
	
	private static final long serialVersionUID = 1L;
	protected static final String MOBILE_VIEW = "mobile";
	protected static final String WEB_VIEW = "web";
	public static final String NO_SEARCH_RESULT = "no-result";

	protected Map<SessionKey, Object> session;
	protected boolean loggedIn;
	protected String id;
	protected boolean loginStatus;
	protected String userType;
	
	protected boolean edit = false;
	protected boolean delete = false; 
	protected OPERATION_MODE operationMode = OPERATION_MODE.VIEW;
	
	public String show() {
		return SUCCESS;
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public void setSession(Map map) {
		this.session = map;
	}
	
	public Map<SessionKey, Object> getSession() {
		return this.session;
	}

	public boolean isLoggedIn() {
		return loggedIn;
	}

	public void setLoggedIn(boolean loggedIn) {
		this.loggedIn = loggedIn;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public boolean isLoginStatus() {
		return loginStatus;
	}

	public void setLoginStatus(boolean loginStatus) {
		this.loginStatus = loginStatus;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}
	
	public boolean isEdit() {
		return edit;
	}

	public void setEdit(boolean edit) {
		this.edit = edit;
	}

	public boolean isDelete() {
		return delete;
	}

	public void setDelete(boolean delete) {
		this.delete = delete;
	}

	public OPERATION_MODE getOperationMode() {
		return operationMode;
	}

	public void setOperationMode(OPERATION_MODE operationMode) {
		this.operationMode = operationMode;
	}

	public boolean isLogin(){
		try{
			SystemUser user = (SystemUser)session.get(SessionKey.SESSION_USER);
			if(user != null){
				return true;
			}
			return false;
		}catch (Exception e) {
			return false;
		}
	}
	
	public SystemUser getUser(){
		if(session.get(SessionKey.SESSION_USER) != null) {
			return (SystemUser)session.get(SessionKey.SESSION_USER);
		} else {
			throw new RuntimeException("User session not found");
		}
	}
	
	protected void editMode() {
		operationMode = OPERATION_MODE.EDIT;
	}
	
	protected void addMode() {
		operationMode = OPERATION_MODE.ADD;
	}
	
	
	protected void setAddSettings(BaseEntity entity) {
		setInserDatetTime(entity);
	}
	
	protected void setUpdateSettings(BaseEntity entity) {
		setUpdateDateTime(entity);
	}
	
	private void setUpdateDateTime(BaseEntity entity) {
		entity.setUpdateDateTime(Calendar.getInstance());
	}
	
	private void setInserDatetTime(BaseEntity entity) {
		entity.setInsertDateTime(Calendar.getInstance());
	}
	
	public boolean isAdmin() {
		return getUser().getUserRole().equals(SystemUser.USER_ROLE.ADMIN.name());
	}
	
}
