package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.MonthlyDataDao;
import pdn.sci.cs.entity.MonthlyData;
import pdn.sci.cs.entity.MonthlyDataReport;

@Service
public class MonthlyDataService {

  @Autowired
  private MonthlyDataDao monthlyDataDao;

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

  public void deleteByLamaNivasaYearMonth(String id, Integer year, String month) {
    monthlyDataDao.delete(id, year, month);
  }
  
  public MonthlyDataReport report(int year, String month, String searchDistrict) {
    List<MonthlyDataReport> l = monthlyDataDao.report(year, month, searchDistrict);
    if(l.size() > 0) {
      return l.get(0);
    } else {  
      return null;
    }
  }



}
