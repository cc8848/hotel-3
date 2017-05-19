package interceptor;

import java.util.Map;

import bean.Admin;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AdminInterceptor extends AbstractInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// ����Ա��¼������
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext context = invocation.getInvocationContext();
		Map<String, Object> map = context.getSession();
		Admin admin = (Admin) map.get("admin");
		if(admin != null){
			return invocation.invoke();
		}
		context.put("message", "管理员要登入才可以进行操作");
		return Action.LOGIN;
	}

}
