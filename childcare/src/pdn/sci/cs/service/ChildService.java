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
	
	public Pager findAllDeleted(Integer start, Integer size) {		
		return childDao.findAllDeleted(start, size);
	}

	public Pager findAllByLamaNivasaId(String lamaNivasaId, Integer start, Integer size) {
		return childDao.findAllByLamaNivasaId(lamaNivasaId, start, size);
	}
	
	public Pager findAllDeletedByLamaNivasaId(String lamaNivasaId, Integer start, Integer size) {		
		return childDao.findAllDeletedByLamaNivasaId(lamaNivasaId, start, size);
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
	
	public ChildrenSummary getChildrenSummary(int age, String district) {
      //return childDao.buildChildSummary(age, district);
		return null;
  }

	public Pager findAllByProbationUnitId(String referenceId, Integer pageStart, Integer pageSize) {
		return childDao.findAllByProbationUnitId(referenceId,pageStart,pageSize);
	}

	public ChildrenSummary getChildrenSummary(int age, String district, String province) {
		return childDao.buildChildSummary(age, district, province);
	}

	public Pager findAllDeletedByProbationUnitId(String referenceId, Integer pageStart, Integer pageSize) {
		return childDao.findAllDeletedByProbationUnitId(referenceId,pageStart,pageSize);
	}
	
	public Pager findAllUnconfirmedByProbationUnitId(String referenceId, Integer pageStart, Integer pageSize) {
		return childDao.findAllUnconfirmedByProbationUnitId(referenceId,pageStart,pageSize);
	}

    public Pager findAllByProvinceId(String referenceId, Integer pageStart, Integer pageSize) {
      return childDao.findAllByProvinceId(referenceId,pageStart,pageSize);
  }

	public Pager searchByProvince(String name, String code, String lamaNivasaId, String referenceId, Integer pageStart, Integer pageSize) {
		return childDao.searchByProvince(name, code, lamaNivasaId, referenceId, pageStart, pageSize);
	}

	public Pager searchByProbationUnit(String name, String code, String lamaNivasaId, String referenceId, Integer pageStart, Integer pageSize) {
		return childDao.searchByProbationUnit(name, code, lamaNivasaId, referenceId, pageStart, pageSize);
	}

	public Pager searchByLamanivasa(String name, String referenceId, Integer pageStart, Integer pageSize) {
		return childDao.searchByLamanivasa(name, referenceId, pageStart, pageSize);
	}
}
