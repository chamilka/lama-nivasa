package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.ChildCareplanDao;
import pdn.sci.cs.entity.ChildCareplan;

@Service
public class ChildCareplanService {

	@Autowired private ChildCareplanDao childCareplanDao;

	public List<ChildCareplan> findAll() {
		return childCareplanDao.findAll();
	}

	public ChildCareplan findById(String id) {
		return childCareplanDao.findById(id);
	}

	public ChildCareplan save(ChildCareplan d) {
		return childCareplanDao.save(d);
	}

	public void update(ChildCareplan d) {
	  childCareplanDao.update(d);
	}

	public void delete(String id) {
	  childCareplanDao.deleteById(id);
	}

	public List<ChildCareplan>  findByChildId(String childId) {
		return childCareplanDao.findByChildId(childId);
	}

}
