package bean;

import bean.Hotel;

public class room {
    Integer id;
    Integer roomid;
    String type;
    double price;
    Hotel hotels;
    private int status;// ״̬

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
/*public room(Integer roomid,String type,float price){
    this.roomid = roomid;
	this.type = type;
	this.price = price;
}*/


    public Integer getRoomid() {
        return roomid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setRoomid(Integer roomid) {
        this.roomid = roomid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Hotel getHotels() {
        return hotels;
    }

    public void setHotels(Hotel hotels) {
        this.hotels = hotels;
    }

}
