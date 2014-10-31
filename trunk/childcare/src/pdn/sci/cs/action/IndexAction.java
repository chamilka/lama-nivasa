package pdn.sci.cs.action;

import org.springframework.context.annotation.Scope;

@Scope(value = "prototype")
public class IndexAction extends BaseAction {
  public String execute() {
    return SUCCESS;
  }
}
