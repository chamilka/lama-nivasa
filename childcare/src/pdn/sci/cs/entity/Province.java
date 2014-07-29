package pdn.sci.cs.entity;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "province")
public class Province extends BaseEntity implements java.io.Serializable {

  public static final String PROVINCE_NAME = "name";

  private static final long serialVersionUID = 1L;
  private String name;
  private Set<District> districts = new HashSet<District>(0);

  public Province() {}

  public Province(String id, String name) {
    this.id = id;
    this.name = name;
  }

  @Id
  @Column(name = "ID", unique = true, nullable = false, length = 32)
  public String getId() {
    return this.id;
  }

  public void setId(String id) {
    this.id = id;
  }

  @Column(name = "NAME", nullable = false)
  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }

  @OneToMany(fetch = FetchType.LAZY, mappedBy = "province")
  public Set<District> getDistricts() {
    return districts;
  }


  public void setDistricts(Set<District> districts) {
    this.districts = districts;
  }

}
