package pdn.sci.cs.action;

import org.springframework.context.annotation.Scope;

@Scope(value = "prototype")
public class InformationAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	public String homeView() {
		return SUCCESS;
	}
	
	public String eventView() {
		return SUCCESS;
	}
	
	public String accountView() {
		return SUCCESS;
	}
	
	public String contactUsView() {
		return SUCCESS;
	}
	
	

}
