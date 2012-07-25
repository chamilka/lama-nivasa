package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.ProbationUnitDao;
import pdn.sci.cs.entity.ProbationUnit;

@Service
public class ProbationUnitService {
	
	@Autowired private ProbationUnitDao probationUnitDao;
	
	public List<ProbationUnit> findAll() {
		return probationUnitDao.findAll();
	}
	
	public ProbationUnit findById(String id) {
		return probationUnitDao.findById(id);
	}
	
	public ProbationUnit save(ProbationUnit d) {
		return probationUnitDao.save(d);
	}
	
	public void update(ProbationUnit d) {
		probationUnitDao.update(d);
	}
	
	public void delete(String id) {
		probationUnitDao.deleteById(id);
	}
	
	public List<ProbationUnit> search(ProbationUnit unit) {
		return probationUnitDao.search(unit);
	}

}
