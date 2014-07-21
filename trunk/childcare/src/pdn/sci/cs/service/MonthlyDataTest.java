package pdn.sci.cs.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import pdn.sci.cs.entity.MonthlyDataReport;

public class MonthlyDataTest extends ServiceTest {

  @Autowired
  private MonthlyDataService monthlyDataService;

  @Test
  public void reportTest() {
    MonthlyDataReport l = monthlyDataService.report(2014, "");
    
    System.out.println(l);
    
  }

}

