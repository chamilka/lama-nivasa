package pdn.sci.cs.action;

import org.springframework.context.annotation.Scope;

@Scope(value = "prototype")
public class SearchInformationAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	public String searchLamaNivasa() {
		return SUCCESS;
	}
	
	public String searchLamaNivasaReport() {
		return SUCCESS;
	}


}
