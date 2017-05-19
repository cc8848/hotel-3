package action;

import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import service.ConsumerService;
import bean.Consumer;

public class consumerAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private Consumer consumer;
	private ConsumerService consumerService;
	private String message;
	Timestamp date;
	private HttpServletRequest request = null;
	private HttpSession session = null;
	
	//�ͻ�����
	public String execute() throws Exception {
     Consumer userLogin=consumerService.loginUser(consumer);	
		if (userLogin != null) {
			Timestamp d = new Timestamp(System.currentTimeMillis());
			Timestamp d2=new Timestamp(System.currentTimeMillis()+24*60*60*1000);
			String in=d.toString();
			String out=d2.toString();
			String inn=in.split(" ")[0];
			String outt=out.split(" ")[0];
			String date=inn+" - "+outt;
			System.out.println(date);
			request = ServletActionContext.getRequest();
			session = request.getSession();
			session.setAttribute("consumer", userLogin);	
			session.setAttribute("date", date);	
			return SUCCESS;
		}
		message="用户名或密码错误";
		return INPUT;
	}
	public String findConsumer() throws Exception {
		request = ServletActionContext.getRequest();
		session = request.getSession();
		Consumer consumers = (Consumer) session.getAttribute("consumer");
		 System.out.println("222222222222222");
		 System.out.println(date);
		 System.out.println(consumers.getCname());
		//Consumer userLogin=consumerService.loginUser(consumers);	
      
       

			return SUCCESS;
		
	}
//�ͻ�ע��
	public String register() throws Exception {
		// ����service��صķ��������ʵ�ʵ�ҵ����
		if(consumer.getCname().length()>0&&consumer.getPassword().length()>0&&consumer.getPhone().length()>0){
			 Consumer userLogin=consumerService.loginUser(consumer);	
			 
				if (userLogin != null) {
					message="用户名已存在";
					return "failure";
				}
				consumer.setIntegration(0);
		this.consumerService.saveUser(consumer);
		
		System.out.println(consumer.getCid());
		request = ServletActionContext.getRequest();
		session = request.getSession();
		session.setAttribute("consumer", consumer);
		System.out.println(consumer.getCname());
		return SUCCESS;}
		else 
		{   message="注册信息不能为空";
			return "failure";
		}
	
	}

	public String reg() throws Exception {
		// 调用service相关的方法，完成实际的业务处理
		this.consumerService.saveUser(consumer);
		return "addUs";
	}
	/**
	 * ��ѯ���пͻ�
	 * 
	 * @return
	 * @throws Exception
	 */
	public String allConsumer() throws Exception {
		request = ServletActionContext.getRequest();
		request.setAttribute("list", this.consumerService.findAllconsumers());
		return SUCCESS;
	}
	//�޸��û���Ϣ 
	/*public String updatePInfo() throws Exception {
		
		Consumer consumers = this.consumerService.findconsumerById(consumer.getCid());
		if (consumers != null) {
			return SUCCESS;
		}
		
		return INPUT;
	}

	public String updateInfo() throws Exception {
		this.consumerService.updateUser(consumer);
		return SUCCESS;
	}*/
	
	//ɾ��ͻ�
	public String deleteInfo() throws Exception {
		this.consumerService.removeUser(consumer);
		return SUCCESS;
	}
	/**
	 * �޸Ŀͻ�
	 * @return
	 * @throws Exception
	 */
	public String consumerUpdateInfo() throws Exception{
		request = ServletActionContext.getRequest();
		session = request.getSession();
		Consumer consumers = (Consumer) session.getAttribute("consumer");
		// // 如果客户登陆过
		if(consumers != null){
			this.consumer = this.consumerService.findconsumerById(consumers.getCid());
			return "consumerUpdate";
		}
		return INPUT;
	}
	public String updateConsumer() throws Exception{
		  Consumer userLogin=consumerService.loginUser(consumer);	
		  //if(userLogin==null){
		this.consumerService.updateUser(consumer);
		message = "修改信息成功";
		return "updateSuc";
		 /* else{
			  message = "此昵称已被占用";
			  return "updateSuc";
		  }*/
	}

	/**
	 * �˳��ͻ�
	 * 
	 * @return
	 * @throws Exception
	 */
	public String loginOut() throws Exception {
		request = ServletActionContext.getRequest();
		session = request.getSession();
		session.removeAttribute("consumer");
		return "loginout";
	}

	public Consumer getConsumer() {
		return consumer;
	}

	public void setConsumer(Consumer consumer) {
		this.consumer = consumer;
	}

	public ConsumerService getConsumerService() {
		return consumerService;
	}

	public void setConsumerService(ConsumerService consumerService) {
		this.consumerService = consumerService;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	
	

}
