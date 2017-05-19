package action;
import java.sql.Timestamp;
import java.util.ArrayList;

import bean.Consumer;

import java.util.List;
import java.util.Map;






import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bean.Order;
import bean.hotel_worker;
import bean.room;
import bean.Consumer;
import service.OrderService;
import service.RoomService;
import service.hotelService;
import service.ConsumerService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import bean.Hotel;
public class orderAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Order order;
	private room room;
	private OrderService orderService;
	private RoomService roomService;
	private String message;
	private HttpServletRequest request = null;
	private HttpSession session = null;
    private Hotel hotel;
    
private ConsumerService consumerService;
	/**
	 * ��ѯ���ж���
	 */
	@Override
	public String execute() throws Exception {
		// �õ�orders�������û��Ķ���
		//System.out.println("进入action");
		request = ServletActionContext.getRequest();
		session = request.getSession();
		hotel_worker worker = (hotel_worker) session.getAttribute("worker");
		//System.out.println(worker.getHotels().getHname());
	
		List<Order> orders = this.orderService.findAllOrder(worker);
		session.setAttribute("listorder", orders);
	
		List<room> rooms = new ArrayList<room>();
		if (orders.size() > 0) {
				
			for (Order order : orders) {
			
				System.out.println(order.getRoom().getRoomid());
				
				
				rooms.add(this.roomService.findRoomById(order.getRoom().getId()));
				System.out.println(order.getRoom().getId());
			}
		
		}
		// �����û���ķ���hotels��listAllHotel���棬��jsp����ȡ������ʾ		
		session.setAttribute("orderroom", rooms);
		return SUCCESS;
	}
	public String consumerOrder() throws Exception{
		request = ServletActionContext.getRequest();
		session = request.getSession();
		Consumer consumers =(Consumer) session.getAttribute("consumer");
		List<Order> orders = this.orderService.getConsumerOrder(consumers);
		session.setAttribute("consumerOrder", orders);
		return SUCCESS;
	}

	/**
	 * Ԥ������
	 * 
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public String saveOrder() throws Exception {
		request = ServletActionContext.getRequest();
		session = request.getSession();
		System.out.println("在saveorder中");
		Hotel hotels =this.roomService.findHotelById(hotel.getHid());
		/*Map<String, Object> request = (Map<String, Object>) ActionContext
				.getContext().get("request");
		request.put("listRoom", this.roomService.findRoombyHid(hotel));*/
      List<room> listroom = this.roomService.findRoombyHid(hotel);
		
		session.setAttribute("listroom", listroom);
		session.setAttribute("hotels",hotels);
		
		return SUCCESS;
		
	}

	public Hotel getHotel() {
		return hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	public String addOrder() throws Exception {
		
		room roomresult = this.roomService.findRoomById(room.getId());
		
		if (roomresult.getStatus() == 0) {
			request = ServletActionContext.getRequest();
			session = request.getSession();		
			
		   String date=(String) session.getAttribute("date");
		   String intime=date.split(" - ")[0]+" 14:00:000";
		   System.out.println(date);
		 String outtime=date.split(" - ")[1]+" 12:00:000";
		 
			Timestamp orderInDate = Timestamp.valueOf(intime);
			Timestamp orderOutDate = Timestamp.valueOf(outtime); 
			Consumer consumer=(Consumer) session.getAttribute("consumer");
			int days = (int) ((orderOutDate.getTime()-orderInDate.getTime()+2*60*60*1000)/(1000*60*60*24));
			  
			double price=(double) (days*roomresult.getPrice());
			session.setAttribute("price", price);
			session.setAttribute("orderInDate", orderInDate);
			session.setAttribute("orderOutDate", orderOutDate);				
			session.setAttribute("r", roomresult);	
			session.setAttribute("integration",consumer.getIntegration());
			return "write";
		}
		message = "房间已满";
		return INPUT;
	}
	public String addOrder2() throws Exception {
		request = ServletActionContext.getRequest();
		session = request.getSession();
		Consumer consumers = (Consumer) session.getAttribute("consumer");
		order.setConsumer(consumers);
		 System.out.println("fffffff");
		
		double a = order.getPrice()-order.getIntegration();
		room roomresult = (bean.room) session.getAttribute("r");
		System.out.println(roomresult.getType());
		roomresult.setStatus(1);
		this.roomService.updateRoom(roomresult);		
		
		Timestamp orderInDate=(Timestamp) session.getAttribute("orderInDate");
		Timestamp orderOutDate=(Timestamp) session.getAttribute("orderOutDate");
		order.setPrice(a);
		order.setOrderInDate(orderInDate);
		order.setOrderOutDate(orderOutDate);
		order.setRoom(roomresult);
		order.setStatus(0);
		
		this.orderService.saveOrder(order);
		return "addSuc";
	}

	/**
	 * �鿴Ԥ����Ϣ
	 * 
	 * @return
	 * @throws Exception
	 */
	

	/**
	 * �˶�
	 * 
	 * @return
	 * @throws Exception
	 */
	public String deleteOrder() throws Exception {
		// �õ�orders�ĵ�ǰ�û��Ķ���
		request = ServletActionContext.getRequest();
		session = request.getSession();
		Order orders=this.orderService.findOrderById(order.getOrderid());
		this.orderService.removeOrder(orders);
		// ���÷���Ϊ�գ��޿���
		System.out.println("退订成功");
		room roomresult = this.roomService.findRoomById(orders.getRoom().getId());
		roomresult.setStatus(0);
		this.roomService.updateRoom(roomresult);
		message = "您已成功退订";
		return SUCCESS;
	}
public String changeOrder1() throws Exception{
	request = ServletActionContext.getRequest();
	session = request.getSession();
	Order orders=this.orderService.findOrderById(order.getOrderid());
	Consumer consumers=this.consumerService.findconsumerById(orders.getConsumer().getCid());
	Integer a=consumers.getIntegration()-orders.getIntegration();
	consumers.setIntegration(a);
	this.consumerService.updateUser(consumers);
	orders.setStatus(1);
	this.orderService.updateOrder(orders);
	return SUCCESS;
	
}
public String changeOrder2() throws Exception{
	request = ServletActionContext.getRequest();
	session = request.getSession();
	Order orders=this.orderService.findOrderById(order.getOrderid());
	orders.setStatus(2);
	room roomresult=this.roomService.findRoomById(orders.getRoom().getId());
	roomresult.setStatus(0);
	this.roomService.updateRoom(roomresult);
	this.orderService.updateOrder(orders);
	return SUCCESS;	
}
public String changeOrder3() throws Exception{
	request = ServletActionContext.getRequest();
	session = request.getSession();
	Order orders=this.orderService.findOrderById(order.getOrderid());
	orders.setStatus(3);
	this.orderService.updateOrder(orders);
	return SUCCESS;
	
}
public String changeOrder4() throws Exception{
	request = ServletActionContext.getRequest();
	session = request.getSession();
	Order orders=this.orderService.findOrderById(order.getOrderid());
	orders.setStatus(4);
	room roomresult=this.roomService.findRoomById(orders.getRoom().getId());
	roomresult.setStatus(0);
	System.out.println(orders.getConsumer().getCid());
	Consumer c=this.consumerService.findconsumerById(orders.getConsumer().getCid());
	Integer a=(int) (orders.getPrice()/100)+c.getIntegration();
	c.setIntegration(a);
	this.consumerService.updateUser(c);
	this.roomService.updateRoom(roomresult);//顾客离店，房间又可预订了
	this.orderService.updateOrder(orders);
	return SUCCESS;
	
}


	
	public ConsumerService getConsumerService() {
	return consumerService;
}
public void setConsumerService(ConsumerService consumerService) {
	this.consumerService = consumerService;
}
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public OrderService getOrderService() {
		return orderService;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public RoomService getRoomService() {
		return roomService;
	}

	public void setRoomService(RoomService roomService) {
		this.roomService = roomService;
	}

	public room getRoom() {
		return room;
	}

	public void setRoom(room room) {
		this.room = room;
	}

}