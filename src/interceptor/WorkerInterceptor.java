package interceptor;

import java.util.Map;

import bean.hotel_worker;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class WorkerInterceptor extends AbstractInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// ����Ա��¼������
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext context = invocation.getInvocationContext();
		Map<String, Object> map = context.getSession();
		hotel_worker worker = (hotel_worker) map.get("worker");
		if(worker != null){
			return invocation.invoke();
		}
		context.put("message", "员工要登入才可以进行操作");
		return Action.LOGIN;
	}

}
