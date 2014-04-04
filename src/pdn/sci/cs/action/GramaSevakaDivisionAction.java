package pdn.sci.cs.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.GramaSevakaDivision;
import pdn.sci.cs.service.GramaSevakaDivsionService;

@Scope(value = "prototype")
public class GramaSevakaDivisionAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	@Autowired private GramaSevakaDivsionService gramaSevakaDivsionService;
	private GramaSevakaDivision gramaSevakaDivision;
	private List<GramaSevakaDivision> list;
	
	public String list() {
		list = gramaSevakaDivsionService.findAll();
		return SUCCESS;
	}
	
	public String frame() {
		return SUCCESS;
	}
	
	public String add() {
		return SUCCESS;
	}
	
	public String save() {
		return SUCCESS;
	}
	
	public String view() {
		return SUCCESS;
	}

	public GramaSevakaDivision getGramaSevakaDivision() {
		return gramaSevakaDivision;
	}

	public void setGramaSevakaDivision(GramaSevakaDivision gramaSevakaDivision) {
		this.gramaSevakaDivision = gramaSevakaDivision;
	}

	public List<GramaSevakaDivision> getList() {
		return list;
	}

	public void setList(List<GramaSevakaDivision> list) {
		this.list = list;
	}

}
