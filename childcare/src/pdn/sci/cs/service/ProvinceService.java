package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.ProvinceDao;
import pdn.sci.cs.entity.Province;

@Service
public class ProvinceService {
	
	@Autowired private ProvinceDao provinceDao;
	
	public List<Province> findAll() {
		return provinceDao.findAll();
	}
	
	public Province findById(String id) {
		return provinceDao.findById(id);
	}
	
	public Province save(Province d) {
		return provinceDao.save(d);
	}
	
	public void update(Province d) {
	  provinceDao.update(d);
	}
}
