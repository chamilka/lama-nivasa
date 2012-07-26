package pdn.sci.cs.action;

import org.springframework.context.annotation.Scope;

@Scope("prototype")
public class SettingsAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	public String frame() {
		return SUCCESS;
	}

}
