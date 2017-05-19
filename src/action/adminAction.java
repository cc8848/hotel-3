package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bean.Admin;
import service.adminService;

import com.opensymphony.xwork2.ActionSupport;

public class adminAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Admin admin;
	private adminService adminService;
	private String message;
	private HttpServletRequest request = null;
	private HttpSession session = null;

	/**
	 * ����Ա��¼
	 */
	@Override
	public String execute() throws Exception {
		
		Admin adminLogin = this.adminService.loginAdmin(admin);
	
		if (adminLogin != null) {
			request = ServletActionContext.getRequest();
			session = request.getSession();
			session.setAttribute("admin", adminLogin);
			return SUCCESS;
		}
		
		return INPUT;
	}
	public String findAdmin() throws Exception{
	/*Admin admins=this.adminService.findAdminbyid(admin.getAdminid());
	request = ServletActionContext.getRequest();
	session = request.getSession();
	session.setAttribute("admin", admins);*/
		return SUCCESS;
	}
	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public adminService getAdminService() {
		return adminService;
	}

	public void setAdminService(adminService adminService) {
		this.adminService = adminService;
	}

	/**
	 * �˳�����Ա
	 * 
	 * @return
	 * @throws Exception
	 */
	public String loginOut() throws Exception {
		request = ServletActionContext.getRequest();
		session = request.getSession();
		session.removeAttribute("admin");
		return INPUT;
	}

	

	

	

	

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}