package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.ChildGuardianDao;
import pdn.sci.cs.entity.ChildGuardian;

@Service
public class ChildGuardianService {
	
	@Autowired private ChildGuardianDao childGuardianDao;
	
	public List<ChildGuardian> findAll() {
		return childGuardianDao.findAll();
	}
	
	public ChildGuardian findById(String id) {
		return childGuardianDao.findById(id);
	}
	
	public ChildGuardian save(ChildGuardian d) {
		return childGuardianDao.save(d);
	}
	
	public void update(ChildGuardian d) {
		childGuardianDao.update(d);
	}
	
	public void delete(String id) {
		childGuardianDao.deleteById(id);
	}
	
	public List<ChildGuardian>  findByChildId(String childId) {
		return childGuardianDao.findByChildId(childId);
	}

}
