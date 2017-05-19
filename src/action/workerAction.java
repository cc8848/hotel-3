package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bean.hotel_worker;
import bean.room;
import service.workerService;
import service.hotelService;

import com.opensymphony.xwork2.ActionSupport;

import bean.Hotel;
public class workerAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private hotel_worker worker;
	private hotelService hotelService;
	private workerService workerService;
	private String message;
	private HttpServletRequest request = null;
	private HttpSession session = null;
    private Hotel hotel;
	/**
	 * ����Ա��¼
	 */
	@Override
	public String execute() throws Exception {
		
		
	hotel_worker workerLogin = this.workerService.loginWorker(worker);
		if (workerLogin != null) {
			//System.out.println(workerlogin.get)
			request = ServletActionContext.getRequest();
			session = request.getSession();
			session.setAttribute("worker", workerLogin);
			Hotel hotellogin=this.workerService.findHotelbyid(workerLogin.getHotels().getHid());
			session.setAttribute("hotels", hotellogin);
			return SUCCESS;
		
		}
		
		return INPUT;
	}
	public String findWorker() throws Exception {
		return SUCCESS;
	}
	public String findWorkerbyHid(){
		List<hotel_worker> list = this.workerService.findWorkerbyHid(hotel);
		request = ServletActionContext.getRequest();
		session = request.getSession();
		session.setAttribute("list", list);
		Hotel hotels=this.workerService.findHotelbyid(hotel.getHid());
		session.setAttribute("hotels", hotels);
		return SUCCESS;
	}
public String saveWorker() throws Exception {
		
		//System.out.println(rooms.getHotels().getCity());
		System.out.println("增加员工");
		request = ServletActionContext.getRequest();
		session = request.getSession();
		//System.out.println(hotel.getHid());
		//Hotel  hotels = this.workerService.findHotelById(hotel.getHid());
		Hotel  hotels=(Hotel) session.getAttribute("hotels");
		worker.setHotels(hotels);
		this.workerService.saveWorker(worker);	
		return "addsuc";
	}
	public String deleteWorker() throws Exception {
		request = ServletActionContext.getRequest();
		session = request.getSession();
		hotel=(Hotel) session.getAttribute("hotels");
		
		this.workerService.removeWorker(worker);
		return SUCCESS;
	}

	public hotelService getHotelService() {
		return hotelService;
	}

	public void setHotelService(hotelService hotelService) {
		this.hotelService = hotelService;
	}

	public Hotel getHotel() {
		return hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
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
		session.removeAttribute("worker");
		return INPUT;
	}

	

	public hotel_worker getWorker() {
		return worker;
	}

	public void setWorker(hotel_worker worker) {
		this.worker = worker;
	}

	

	public workerService getWorkerService() {
		return workerService;
	}

	public void setWorkerService(workerService workerService) {
		this.workerService = workerService;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
