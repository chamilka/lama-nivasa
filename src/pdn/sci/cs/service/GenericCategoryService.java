package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.GenericCategoryDao;
import pdn.sci.cs.entity.GenericCategory;

@Service
public class GenericCategoryService {
	
	@Autowired private GenericCategoryDao genericCategoryDao;
	
	public GenericCategory findById(String id) {
		return genericCategoryDao.findById(id);
	}
	
	public List<GenericCategory> findAll() {
		return genericCategoryDao.findAll();
	}
	
	public GenericCategory save(GenericCategory genericCategory) {
		return genericCategoryDao.save(genericCategory);
	}
	
	public void update(GenericCategory genericCategory) {
		genericCategoryDao.update(genericCategory);
	}
	
	public void delete(String id) {
		genericCategoryDao.deleteById(id);
	}
	
}
