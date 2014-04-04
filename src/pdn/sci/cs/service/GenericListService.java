package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.GenericListDao;
import pdn.sci.cs.entity.GenericList;

@Service
public class GenericListService {
	
	@Autowired private GenericListDao genericListDao;
	
	public List<GenericList> findListByCategoryId(String categoryId) {
		return genericListDao.findByCategoryId(categoryId);
	}
	
	public List<GenericList> findListByCategoryName(String categoryName) {
		return genericListDao.findByCategoryName(categoryName);
	}
	
	public GenericList findById(String id) {
		return genericListDao.findById(id);
	}
	
	public GenericList save(GenericList genericList) {
		return genericListDao.save(genericList);
	}
	
	public void update(GenericList genericList) {
		genericListDao.update(genericList);
	}
	
	public void delete(String id) {
		genericListDao.deleteById(id);
	}
	
}
