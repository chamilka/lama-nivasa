package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.ChildPictureDao;
import pdn.sci.cs.entity.ChildPicture;

@Service
public class ChildPictureService {
	
	@Autowired private ChildPictureDao childPictureDao;
	
	public List<ChildPicture> findAll() {
		return childPictureDao.findAll();
	}
	
	public ChildPicture findById(String id) {
		return childPictureDao.findById(id);
	}
	
	public ChildPicture save(ChildPicture d) {
		return childPictureDao.save(d);
	}
	
	public void update(ChildPicture d) {
		childPictureDao.update(d);
	}
	
	public void delete(String id) {
		childPictureDao.deleteById(id);
	}
	
	public List<ChildPicture>  findByChildId(String childId) {
		return childPictureDao.findByChildId(childId);
	}

}
