package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.ChildTransferDao;
import pdn.sci.cs.entity.ChildTransfer;
import pdn.sci.cs.util.Pager;

@Service
public class ChildTransferService {
	
	@Autowired private ChildTransferDao childTransferDao;
	
	public List<ChildTransfer> findAll() {
		return childTransferDao.findAll();
	}
	
	public ChildTransfer findById(String id) {
		return childTransferDao.findById(id);
	}
	
	public ChildTransfer save(ChildTransfer d) {
		return childTransferDao.save(d);
	}
	
	public void update(ChildTransfer d) {
		childTransferDao.update(d);
	}
	
	public void delete(String id) {
		childTransferDao.deleteById(id);
	}
	
	public List<ChildTransfer>  findByChildId(String childId) {
		return childTransferDao.findByChildId(childId);
	}

	public Pager findAllUnconfirmedByProbationUnitId(String referenceId, Integer pageStart, Integer pageSize) {
		return childTransferDao.findAllUnconfirmedByProbationUnitId(referenceId,pageStart,pageSize);
	}

	public int findActiveTransferByChildId(String id) {
		 return childTransferDao.findActiveTransferByChildId(id);
	}

}
