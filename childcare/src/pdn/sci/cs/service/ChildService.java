package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.ChildDao;
import pdn.sci.cs.entity.Child;
import pdn.sci.cs.util.ChildrenSummary;
import pdn.sci.cs.util.Pager;

@Service
public class ChildService {

	@Autowired private ChildDao childDao;

	public List<Child> findAll() {
		return childDao.findAll();
	}

	public Pager findAll(Integer start, Integer size) {
		return childDao.findAll(start, size);
	}

	public Pager findAllByLamaNivasaId(String lamaNivasaId, Integer start, Integer size) {
		return childDao.findAllByLamaNivasaId(lamaNivasaId, start, size);
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

	public Pager search(String name, String code, String lamaNivasaId, Integer start, Integer size) {
		return childDao.search(name, code, lamaNivasaId, start, size);
	}

	public ChildrenSummary getChildrenSummary() {
		return childDao.buildChildSummary();
	}

}
