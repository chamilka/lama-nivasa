package pdn.sci.cs.util;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import pdn.sci.cs.action.ChildPictureAction;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Result;
 
public class ImageResult implements Result {
 
	private static final long serialVersionUID = 1L;

	public void execute(ActionInvocation invocation) throws Exception {
 
		ChildPictureAction action = (ChildPictureAction) invocation.getAction();
		HttpServletResponse response = ServletActionContext.getResponse();
 
		response.setContentType(action.getCustomContentType());
		response.getOutputStream().write(action.getImageInByte());
		response.getOutputStream().flush();
 
	}
 
}