package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.MonthlyDataDao;
import pdn.sci.cs.entity.MonthlyData;

@Service
public class MonthlyDataService {
	
	@Autowired private  MonthlyDataDao monthlyDataDao;
	
	public List<MonthlyData> findAll() {
		return monthlyDataDao.findAll();
	}
	
	public MonthlyData findById(String id) {
		return monthlyDataDao.findById(id);
	}
	
	public MonthlyData save(MonthlyData d) {
		return monthlyDataDao.save(d);
	}
	
	public void update(MonthlyData d) {
		monthlyDataDao.update(d);
	}
	
	public void delete(String id) {
		monthlyDataDao.deleteById(id);
	}
	
	public List<MonthlyData> search(MonthlyData monthlyData) {
		return monthlyDataDao.search(monthlyData);
	}

}

