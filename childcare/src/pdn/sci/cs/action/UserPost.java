package pdn.sci.cs.action;

public enum UserPost {
  ADMIN("System Admin"), COMMISSIONER("Commissioner"), PROBATION_OFFICER_OF_HEADQUARTERS(
      "Probation Officer of Headquarters"), PROVINCIAL_OFFICER("Provincial Officer"), PROBATION_OFFICER_IN_CHARGE(
      "Probation Officer In Charge"), PROBATION_OFFICER("Probation Officer"), DIRECTOR("Director");
  private String user_post;

  private UserPost(String s) {
    user_post = s;
  }

  public String getStatusCode() {
    return user_post;
  }

}
