package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bean.Hotel;
import bean.room;
import service.hotelService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import bean.room;
import service.RoomService;

public class roomAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private RoomService roomService;
	private String message;
	private room room;
	private hotelService hotelService;
	private HttpServletRequest request = null;
	private HttpSession session = null;
   
    private Hotel hotel;
	/**
	 * ��ѯ���з���
	 */
	@Override
	public String execute() throws Exception {	
	
		request = ServletActionContext.getRequest();
		session = request.getSession();

       Hotel hotels = this.roomService.findHotelById(hotel.getHid());
       System.out.println("xxxxxxxxxxxxxxxx");
       
		List<room> listroom = this.roomService.findRoombyHid(hotels);
		
		session.setAttribute("listroom", listroom);
		session.setAttribute("hotels", hotels);
		return SUCCESS;
	}

	/**
	 * ���ӷ���
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getRoomhotel() throws Exception { 
		System.out.println("进入gethotel");
		
		
		//System.out.println("xxxxxxxxxxxxxxxx");
		
		//request = ServletActionContext.getRequest();
		//session = request.getSession();
		
		//session.setAttribute("hotel", hotels);
		return SUCCESS;
	}
	public String saveRoom() throws Exception {
		
		//System.out.println(rooms.getHotels().getCity());
		System.out.println("增加房间");
		
		//System.out.println(hotel.getHid());
		Hotel  hotels = this.roomService.findHotelById(hotel.getHid());
		room.setHotels(hotels);
		this.roomService.saveRoom(room);	
		return "addsuc";
	}
	

	/**
	 * ɾ���
	 * 
	 * @return
	 * @throws Exception
	 */
	public String deleteRoom() throws Exception {
		room rooms =this.roomService.findRoomById(room.getId());
	hotel=this.roomService.findHotelById(rooms.getHotels().getHid());
		this.roomService.removeRoom(rooms);
        		
		return SUCCESS;
	}

	/**
	 * �޸ķ���
	 * 
	 * @return
	 * @throws Exception
	 */
	public String updatePRoom() throws Exception {
		
		room rooms = this.roomService.findRoomById(room.getId());
	
		if (rooms != null) {
			
			ActionContext context = ActionContext.getContext();
			context.getSession().put("roomUp", rooms);
			
			return SUCCESS;
		}
		System.out.println("进入updateP失败");
		return INPUT;
	}
    public String updateRoom() throws Exception {
		
		room rooms = this.roomService.findRoomById(room.getId());
		System.out.println(rooms.getHotels().getCity());
		  hotel = this.roomService.findHotelById(rooms.getHotels().getHid());
	    room.setHotels(hotel);
	if(room!=null){
		this.roomService.updateRoom(room);
		return SUCCESS;
	}
	else
		return INPUT;
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

	public RoomService getRoomService() {
		return roomService;
	}

	public void setRoomService(RoomService roomService) {
		this.roomService = roomService;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public room getRoom() {
		return room;
	}

	public void setRoom(room room) {
		this.room = room;
	}
}