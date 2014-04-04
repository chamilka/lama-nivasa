package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.GramaSevakaDao;
import pdn.sci.cs.entity.GramaSevaka;

@Service
public class GramaSevakaService {
	
	@Autowired private GramaSevakaDao gramaSevakaDao;
	
	public List<GramaSevaka> findAll() {
		return gramaSevakaDao.findAll();
	}
	
	public GramaSevaka findById(String id) {
		return gramaSevakaDao.findById(id);
	}
	
	public GramaSevaka save(GramaSevaka d) {
		return gramaSevakaDao.save(d);
	}
	
	public void update(GramaSevaka d) {
		gramaSevakaDao.update(d);
	}

}
