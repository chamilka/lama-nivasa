package pdn.sci.cs.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Calendar;

import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import pdn.sci.cs.entity.District;
import pdn.sci.cs.entity.DivisionalSecretariat;
import pdn.sci.cs.entity.GramaSevakaDivision;
import pdn.sci.cs.entity.SystemUser;

public class GnDivisionTest extends ServiceTest {

  @Autowired
  DivisionalSecretariatService divisionalSecretariatService;
  @Autowired
  GramaSevakaDivsionService gramaSevakaDivsionService;
  @Autowired
  DistrictService districtService;


  @Test
  public void signIn() {
    String line;
    BufferedReader br;
    FileWriter fr;
    
    try {
      
      br = new BufferedReader(new InputStreamReader(new FileInputStream("f:/GN_Divisions1.csv")));
      //fr = new FileWriter(new File("f:/GN.txt"));
      String[] splitter;
      final String delimitter = ",";
      District district;
      DivisionalSecretariat divisionalSecretariat;
      GramaSevakaDivision gramaSevakaDivision;
      int divisionSecInc = 1;
      int gnInc = 1;
      
      while((line = br.readLine()) != null) {
        splitter = line.split(delimitter);
        district = districtService.findByDistrictCode(splitter[0].trim());
        //fr.write(district.getName());
        divisionalSecretariat = divisionalSecretariatService.findByName(splitter[4].trim());
        
        if(divisionalSecretariat == null) {
          divisionalSecretariat = new DivisionalSecretariat(splitter[3].trim(), district, splitter[4].trim());
          divisionalSecretariat.setInsertDateTime(Calendar.getInstance());
          divisionalSecretariat.setUpdateDateTime(Calendar.getInstance());
          divisionalSecretariat.setInsertUserId("U001");
          divisionalSecretariat.setUpdateUserId("U001");
          divisionalSecretariat.setSortOrder(divisionSecInc++);
          divisionalSecretariat.setId("DS" + (divisionSecInc - 1));
          divisionalSecretariatService.save(divisionalSecretariat);
        }
        
        gramaSevakaDivision = new GramaSevakaDivision();
        gramaSevakaDivision.setCode(splitter[5].trim());
        gramaSevakaDivision.setName(splitter[6].trim());
        gramaSevakaDivision.setInsertDateTime(Calendar.getInstance());
        gramaSevakaDivision.setUpdateDateTime(Calendar.getInstance());
        gramaSevakaDivision.setInsertUserId("U001");
        gramaSevakaDivision.setUpdateUserId("U001");
        gramaSevakaDivision.setSortOrder(gnInc++);
        gramaSevakaDivision.setId("GN"+ (gnInc - 1));
        gramaSevakaDivision.setDivisionalSecretariat(divisionalSecretariat);
        
        gramaSevakaDivsionService.save(gramaSevakaDivision);
        if(splitter[2].equals("Kandy"))
          System.out.println(gnInc + " - " + splitter[0] + ", " + splitter[3] + ", " + splitter[4] + ", " + splitter[5] + ", " + splitter[6]);
      }
    } catch (FileNotFoundException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    } catch(IOException e) {
      e.printStackTrace();
    }
  }

}
