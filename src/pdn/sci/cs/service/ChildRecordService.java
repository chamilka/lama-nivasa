package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.ChildRecordDao;
import pdn.sci.cs.entity.ChildRecord;

@Service
public class ChildRecordService {

	@Autowired private ChildRecordDao childRecordDao;

	public List<ChildRecord> findAll() {
		return childRecordDao.findAll();
	}

	public ChildRecord findById(String id) {
		return childRecordDao.findById(id);
	}

	public ChildRecord save(ChildRecord d) {
		return childRecordDao.save(d);
	}

	public void update(ChildRecord d) {
		childRecordDao.update(d);
	}

	public void delete(String id) {
		childRecordDao.deleteById(id);
	}

	public List<ChildRecord>  findByChildId(String childId) {
		return childRecordDao.findByChildId(childId);
	}

}
