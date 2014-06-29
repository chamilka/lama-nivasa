package pdn.sci.cs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pdn.sci.cs.dao.PoliceStationDao;
import pdn.sci.cs.entity.PoliceStation;

@Service
public class PoliceStationService {

  @Autowired
  private PoliceStationDao policeStationDao;

  public List<PoliceStation> findAll() {
    return policeStationDao.findAll();
  }

  public PoliceStation findById(String id) {
    return policeStationDao.findById(id);
  }

  public PoliceStation save(PoliceStation d) {
    return policeStationDao.save(d);
  }

  public void update(PoliceStation d) {
    policeStationDao.update(d);
  }

  public void delete(String id) {
    policeStationDao.deleteById(id);
  }

  public List<PoliceStation> search(PoliceStation unit) {
    return policeStationDao.search(unit);
  }

  public PoliceStation merge(PoliceStation systemUser) {
    return policeStationDao.merge(systemUser);
  }

}
