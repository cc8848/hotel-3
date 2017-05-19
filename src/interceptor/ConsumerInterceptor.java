package interceptor;

import java.util.Map;

import bean.Consumer;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class ConsumerInterceptor extends AbstractInterceptor {

	private static final long serialVersionUID = 1L;
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext context = invocation.getInvocationContext();
		Map<String, Object> session = context.getSession();
		Consumer consumer = (Consumer) session.get("consumer");
		if(consumer != null){
			return invocation.invoke();
		}
		context.put("message", "要登入才可以预定房间哦");
		return Action.LOGIN;
	}

}
