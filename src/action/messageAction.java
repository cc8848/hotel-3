package action;

import java.util.Map;
import bean.Consumer;

import bean.Message;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import service.messageService;
import bean.Order;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import service.hotelService;
import bean.Hotel;
public class messageAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private messageService messageService;
	private Hotel hotel;
	private hotelService hotelService;
	private Order order;
	private HttpServletRequest request = null;
	private HttpSession session = null;
    private Message message;
	public Message getMessage() {
		return message;
	}
	public void setMessage(Message message) {
		this.message = message;
	}
	@SuppressWarnings("unchecked")
	public String throughMessage() throws Exception {
		System.out.println("在throughMessage中");
		request = ServletActionContext.getRequest();
		session = request.getSession();
		System.out.println(hotel.getHid());
		Hotel hotels=this.messageService.findHotelbyid(hotel.getHid());
		//Hotel hotels=(Hotel) session.getAttribute("hotels");
		
		request = ServletActionContext.getRequest();
		session = request.getSession();
		session.setAttribute("hotels", hotels);
		Map<String, Object> request = (Map<String, Object>) ActionContext
				.getContext().get("request");
		request.put("listMessage", this.messageService.findAllMessage(hotels.getHid()));
		System.out.println("目前为止没order的事");
		return SUCCESS;
		
	}
	public String throughMessage2() throws Exception {
		System.out.println("在throughMessage中");
		request = ServletActionContext.getRequest();
		session = request.getSession();
		//System.out.println(hotel.getHid());
		//Hotel hotels=this.messageService.findHotelbyid(hotel.getHid());
		Hotel hotels=(Hotel) session.getAttribute("hotels");
		
		request = ServletActionContext.getRequest();
		session = request.getSession();
		session.setAttribute("hotels", hotels);
		Map<String, Object> request = (Map<String, Object>) ActionContext
				.getContext().get("request");
		request.put("listMessage", this.messageService.findAllMessage(hotels.getHid()));
		System.out.println("目前为止没order的事");
		return SUCCESS;
		
	}
	public String addMessage() throws Exception{
		System.out.println("在addmessage中");
		Order orders=this.messageService.findOrderbyid(order.getOrderid());
		request = ServletActionContext.getRequest();
		session = request.getSession();
		session.setAttribute("messageorder", orders);
		return "add";
	}
public String saveMessage()throws Exception{
	System.out.println("在saveMessage中");
	request = ServletActionContext.getRequest();
	session = request.getSession();
	Order orders=(Order) session.getAttribute("messageorder");
	Hotel hotels=this.messageService.findHotelbyid(orders.getRoom().getHotels().getHid());
	hotel=this.messageService.findHotelbyid(hotels.getHid());
	orders.setStatus(5);
	this.messageService.updateOrder(orders);
	message.setRoomtype(orders.getRoom().getType());
	message.setHotelid(hotels.getHid());
	Consumer consumers=this.messageService.findconsumerbyid(orders.getConsumer().getCid());
	message.setConsumername(consumers.getCname());
	message.setHotel(hotels);
	this.messageService.saveMessage(message);
	return "addsuc";
}
	public messageService getMessageService() {
		return messageService;
	}
	public String deleteMessage()throws Exception{
		request = ServletActionContext.getRequest();
		session = request.getSession();
        hotel=(Hotel) session.getAttribute("hotels");
		Message messages=this.messageService.findMessageById(message.getMid());
		
		this.messageService.removeMessage(messages);
		return "deletesuc";
	}

	public void setMessageService(messageService messageService) {
		this.messageService = messageService;
	}

	public Hotel getHotel() {
		return hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	public hotelService getHotelService() {
		return hotelService;
	}

	public void setHotelService(hotelService hotelService) {
		this.hotelService = hotelService;
	}
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}
}
