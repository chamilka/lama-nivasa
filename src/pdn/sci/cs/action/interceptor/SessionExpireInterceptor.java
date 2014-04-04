/**
 * (C) 2011 AXIOHELIX. All rights reserved.
 */

package pdn.sci.cs.action.interceptor;

import java.util.Map;

import pdn.sci.cs.entity.SessionKey;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class SessionExpireInterceptor extends AbstractInterceptor {
	
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		Object obj = session.get(SessionKey.SESSION_USER);


		if(obj != null){
			return invocation.invoke();
		} else {
			return "sessionExpired";
		}
	}
}
