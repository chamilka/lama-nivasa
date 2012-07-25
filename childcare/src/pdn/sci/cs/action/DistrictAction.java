package pdn.sci.cs.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import pdn.sci.cs.entity.District;
import pdn.sci.cs.service.DistrictService;

@Scope(value = "prototype")
public class DistrictAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	@Autowired private DistrictService districtService;
	private District district;
	private List<District> list;
	
	public String frame() {
		return SUCCESS;
	}
	
	public String list() {
		populateList();
		return SUCCESS;
	}
	
	private void populateList() {
		list = districtService.findAll();
	}

	public District getDistrict() {
		return district;
	}

	public void setDistrict(District district) {
		this.district = district;
	}

	public List<District> getList() {
		return list;
	}

	public void setList(List<District> list) {
		this.list = list;
	}
	
}
