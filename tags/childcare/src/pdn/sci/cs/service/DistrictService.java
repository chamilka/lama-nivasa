package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.DistrictDao;
import pdn.sci.cs.entity.District;

@Service
public class DistrictService {
	
	@Autowired private DistrictDao districtDao;
	
	public List<District> findAll() {
		return districtDao.findAll();
	}
	
	public District findById(String id) {
		return districtDao.findById(id);
	}
	
	public District save(District d) {
		return districtDao.save(d);
	}
	
	public void update(District d) {
		districtDao.update(d);
	}

}
