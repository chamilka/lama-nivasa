package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.ChildDao;
import pdn.sci.cs.entity.Child;

@Service
public class ChildService {
	
	@Autowired private ChildDao childDao;
	
	public List<Child> findAll() {
		return childDao.findAll();
	}
	
	public Child findById(String id) {
		return childDao.findById(id);
	}
	
	public Child save(Child d) {
		return childDao.save(d);
	}
	
	public void update(Child d) {
		childDao.update(d);
	}
	
	public void delete(String id) {
		childDao.deleteById(id);
	}
	
	public List<Child> search(String name, String lamaNivasaId) {
		return childDao.search(name, lamaNivasaId);
	}

}
