package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.LamaNivasaDao;
import pdn.sci.cs.entity.LamaNivasa;
import pdn.sci.cs.util.Pager;

@Service
public class LamaNivasaService {

	@Autowired private LamaNivasaDao lamaNivasaDao;

	public List<LamaNivasa> findAll() {
		return lamaNivasaDao.findAll();
	}

	public Pager findAll(Integer start, Integer size) {
		return lamaNivasaDao.findAll(start, size);
	}

	public LamaNivasa findById(String id) {
		return lamaNivasaDao.findById(id);
	}

	public LamaNivasa save(LamaNivasa d) {
		return lamaNivasaDao.save(d);
	}

	public void update(LamaNivasa d) {
		lamaNivasaDao.update(d);
	}

	public void delete(String id) {
		lamaNivasaDao.deleteById(id);
	}

	public List<LamaNivasa> search(LamaNivasa lamaNivasa) {
		return lamaNivasaDao.search(lamaNivasa);
	}

	public List<LamaNivasa> findByReferenceId(String referenceId) {
		return lamaNivasaDao.findByReferenceId(referenceId);
	}

	public Pager findAllDeleted(Integer pageStart, Integer pageSize) {		
		return lamaNivasaDao.findAllDeleted(pageStart, pageSize);
	}

}
