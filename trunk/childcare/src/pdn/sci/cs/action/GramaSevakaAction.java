package pdn.sci.cs.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.GramaSevaka;
import pdn.sci.cs.service.GramaSevakaService;

@Scope(value = "prototype")
public class GramaSevakaAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	@Autowired private GramaSevakaService gramaSevakaService;
	private GramaSevaka gramaSevaka;
	
	

}
