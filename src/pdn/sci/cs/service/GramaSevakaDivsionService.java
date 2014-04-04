package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.GramaSevakaDivisionDao;
import pdn.sci.cs.entity.GramaSevakaDivision;

@Service
public class GramaSevakaDivsionService {
	
	@Autowired private GramaSevakaDivisionDao gramaSevakaDivisionDao;
	
	public List<GramaSevakaDivision> findAll() {
		return gramaSevakaDivisionDao.findAll();
	}
	
	public GramaSevakaDivision findById(String id) {
		return gramaSevakaDivisionDao.findById(id);
	}
	
	public GramaSevakaDivision save(GramaSevakaDivision d) {
		return gramaSevakaDivisionDao.save(d);
	}
	
	public void update(GramaSevakaDivision d) {
		gramaSevakaDivisionDao.update(d);
	}

}
