package pdn.sci.cs.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.DivisionalSecretariat;
import pdn.sci.cs.service.DivisionalSecretariatService;

@Scope(value = "prototype")
public class DivisionalSecretariatAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	@Autowired private DivisionalSecretariatService divisionalSecretariatService;
	private List<DivisionalSecretariat> list;
	private DivisionalSecretariat divisionalSecretariat;
	
	public String list() {
		list = divisionalSecretariatService.findAll();
		return SUCCESS;
	}

	

}
