package pdn.sci.cs.action;

import java.util.Calendar;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import pdn.sci.cs.entity.BaseEntity;
import pdn.sci.cs.entity.SessionKey;
import pdn.sci.cs.entity.SystemUser;
import pdn.sci.cs.util.Pager;

import com.opensymphony.xwork2.ActionSupport;

public abstract class BaseAction extends ActionSupport implements SessionAware {

	public enum OPERATION_MODE {EDIT, ADD, VIEW};

	private static final long serialVersionUID = 1L;
	protected static final String MOBILE_VIEW = "mobile";
	protected static final String WEB_VIEW = "web";
	public static final String NO_SEARCH_RESULT = "no-result";
	
	public static final int ACTIVE_STATE = 0;
	public static final int INACTIVE_STATE = 1;

	protected Map<SessionKey, Object> session;
	protected boolean loggedIn;
	protected String id;
	protected boolean loginStatus;
	protected String userType;

	protected Pager pager;
	protected Integer pageStart;
	protected Integer pageSize;
	protected String targetDiv;

	protected boolean edit = false;
	protected boolean delete = false;
	protected final int SEARCH_PAGE_SIZE = 50;
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

	public SystemUser getSessionUser(){
		if(session.get(SessionKey.SESSION_USER) != null) {
			return (SystemUser)session.get(SessionKey.SESSION_USER);
		} else {
			throw new RuntimeException("User session not found");
		}
	}

	@SuppressWarnings("unchecked")
	public Pager setActionContext(Pager pager) {
		pager.setTargetDiv(targetDiv);
		pager.setActionCallInfo(ServletActionContext.getActionMapping().getName(),
				ServletActionContext.getActionMapping().getNamespace(),
				ServletActionContext.getRequest().getParameterMap());

		return pager;
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
		entity.setUpdateUserId(getSessionUser().getId());
	}

	private void setUpdateDateTime(BaseEntity entity) {
		entity.setUpdateDateTime(Calendar.getInstance());
	}

	private void setInserDatetTime(BaseEntity entity) {
		entity.setInsertDateTime(Calendar.getInstance());
	}

	public boolean isAdmin() {
		return getSessionUser().getUserRole().equals(SystemUser.USER_ROLE.ADMIN.name());
	}

	public boolean isUser() {
		return getSessionUser().getUserRole().equals(SystemUser.USER_ROLE.USER.name());
	}

	public boolean isOfficer() {
		return getSessionUser().getUserRole().equals(SystemUser.USER_ROLE.OFFICER.name());
	}
	
	public boolean isMinistry() {
		return getSessionUser().getUserRole().equals(SystemUser.USER_ROLE.MINISTRY.name());
	}
	
	public boolean isAdminOrMinistry() {
		return getSessionUser().getUserRole().equals(SystemUser.USER_ROLE.ADMIN.name()) ||
				getSessionUser().getUserRole().equals(SystemUser.USER_ROLE.MINISTRY.name());
	}
	
	public boolean isProbationOfficer() {
		return getSessionUser().getPost().equals(SystemUser.POST.PROBATION_OFFICER.toString());
	}
	
	public boolean isProvincialCommissioner() {
		return getSessionUser().getPost().equals(SystemUser.POST.PROVINCIAL_COMMISSIONER.toString());
	}

	public Pager getPager() {
		return pager;
	}

	public void setPager(Pager pager) {
		this.pager = pager;
	}

	public Integer getPageStart() {
		return pageStart;
	}

	public void setPageStart(Integer pageStart) {
		this.pageStart = pageStart;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public String getTargetDiv() {
		return targetDiv;
	}

	public void setTargetDiv(String targetDiv) {
		this.targetDiv = targetDiv;
	}

}
