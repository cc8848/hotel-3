package action;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bean.Hotel;
import service.hotelService;






import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class hotelAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private hotelService hotelService;
	private String message;
	private Hotel hotel;
	private HttpServletRequest request = null;
	private HttpSession session = null;
	
	@Override
	public String execute() throws Exception {
		
		List<Hotel> list = this.hotelService.findAllHotel();
		request = ServletActionContext.getRequest();
		session = request.getSession();
		session.setAttribute("list", list);
		return SUCCESS;
	}
	public String saveHotel() throws Exception {
		this.hotelService.saveHotel(hotel);
		return SUCCESS;
	}
	public String updatePHotel() throws Exception {
		//System.out.println(room.getRoomid());
		Hotel  hotels = this.hotelService.findHotelById(hotel.getHid());
		System.out.println(hotels.getHname());
		if (hotels != null) {
			
			ActionContext context = ActionContext.getContext();
			context.getSession().put("hotelUP", hotels);
			System.out.println(hotels.getDescription());
			return SUCCESS;
		}
		System.out.println(hotels);
		return INPUT;
	}
	public String findHotelbyname()throws Exception{
		List<Hotel> list =null;
		
			list=this.hotelService.findHotelbynameandcity(hotel.getHname(),hotel.getCity());
			
		
		request = ServletActionContext.getRequest();
		session = request.getSession();
		session.setAttribute("list", list);
		String date=request.getParameter("date");
	
		System.out.println(date);
		session.setAttribute("date", date);
		return SUCCESS;
	}
	public String findHotelbyname2()throws Exception{
		List<Hotel> list =null;
		
			list=this.hotelService.findHotelbynameandcity(hotel.getHname(),hotel.getCity());
			
		
		request = ServletActionContext.getRequest();
		session = request.getSession();
		session.setAttribute("list", list);
		return "success2";
	}
	public String updateHotel() throws Exception {
		System.out.println(hotel.getDescription());
		this.hotelService.updateHotel(hotel);
		
		return SUCCESS;
	}
	public hotelService getHotelService() {
		return hotelService;
	}
	public void setHotelService(hotelService hotelService) {
		this.hotelService = hotelService;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Hotel getHotel() {
		return hotel;
	}
	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}
}
