package bean;

import java.util.HashSet;
import java.util.Set;
import bean.Message;
import bean.room;
import bean.hotel_worker;
public class Hotel {
Integer hid;
String hname;
String city;
String  hotelAddr; 
String description;
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
Set<Message>messages=new HashSet<Message>();
Set<room>rooms=new HashSet<room>();
Set<hotel_worker>workers=new HashSet<hotel_worker>();

public Set<hotel_worker> getWorkers() {
	return workers;
}
public void setWorkers(Set<hotel_worker> workers) {
	this.workers = workers;
}
public Integer getHid() {
	return hid;
}
public void setHid(Integer hid) {
	this.hid = hid;
}



public String getHotelAddr() {
	return hotelAddr;
}
public void setHotelAddr(String hotelAddr) {
	this.hotelAddr = hotelAddr;
}

public String getHname() {
	return hname;
}
public void setHname(String hname) {
	this.hname = hname;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public Set<room> getRooms() {
	return rooms;
}
public void setRooms(Set<room> rooms) {
	this.rooms = rooms;
}
public Set<Message> getMessages() {
	return messages;
}
public void setMessages(Set<Message> messages) {
	this.messages = messages;
}
}
