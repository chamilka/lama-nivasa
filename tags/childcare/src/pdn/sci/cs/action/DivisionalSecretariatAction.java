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
	private String districtId;
	
	public String list() {
		list = divisionalSecretariatService.findAll();
		return SUCCESS;
	}
	
	public String viewByDistrictId() {
		if(districtId != null && !districtId.isEmpty()) {
			list = divisionalSecretariatService.findByDistrictId(districtId);
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	public List<DivisionalSecretariat> getList() {
		return list;
	}

	public void setList(List<DivisionalSecretariat> list) {
		this.list = list;
	}

	public DivisionalSecretariat getDivisionalSecretariat() {
		return divisionalSecretariat;
	}

	public void setDivisionalSecretariat(DivisionalSecretariat divisionalSecretariat) {
		this.divisionalSecretariat = divisionalSecretariat;
	}

	public String getDistrictId() {
		return districtId;
	}

	public void setDistrictId(String districtId) {
		this.districtId = districtId;
	}

}
