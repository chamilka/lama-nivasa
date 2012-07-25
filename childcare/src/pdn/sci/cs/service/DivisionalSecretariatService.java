package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.DivisionalSecretariatDao;
import pdn.sci.cs.entity.DivisionalSecretariat;

@Service
public class DivisionalSecretariatService {
	
	@Autowired private DivisionalSecretariatDao divisionalSecretariatDao;
	
	public List<DivisionalSecretariat> findAll() {
		return divisionalSecretariatDao.findAll();
	}
	
	public DivisionalSecretariat findById(String id) {
		return divisionalSecretariatDao.findById(id);
	}
	
	public DivisionalSecretariat save(DivisionalSecretariat d) {
		return divisionalSecretariatDao.save(d);
	}
	
	public void update(DivisionalSecretariat d) {
		divisionalSecretariatDao.update(d);
	}

}
