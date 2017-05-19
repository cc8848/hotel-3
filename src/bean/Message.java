package bean;
import bean.Hotel;
import bean.Order;
public class Message {
Integer mid;
String message;
Integer hotelid;
String roomtype;
String consumername;


Hotel hotel;

public Integer getMid() {
	return mid;
}
public void setMid(Integer mid) {
	this.mid = mid;
}

public String getConsumername() {
	return consumername;
}
public void setConsumername(String consumername) {
	this.consumername = consumername;
}
public Hotel getHotel() {
	return hotel;
}
public void setHotel(Hotel hotel) {
	this.hotel = hotel;
}

public String getRoomtype() {
	return roomtype;
}
public void setRoomtype(String roomtype) {
	this.roomtype = roomtype;
}
public Integer getHotelid() {
	return hotelid;
}
public void setHotelid(Integer hotelid) {
	this.hotelid = hotelid;
}
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}
}
