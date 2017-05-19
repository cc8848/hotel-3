package dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.RoomDao;
import bean.Hotel;
import bean.room;

public class RoomDaoimpl extends HibernateDaoSupport implements RoomDao {

	@Override
	public void saveRoom(room room) {
		this.getHibernateTemplate().save(room);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<room> findRoombyHid(Hotel hotel) {
		String hql = "from room r where  r.hotels.hid=?";
		List<room> list = (List<room>) this.getHibernateTemplate().find(hql,
				new Object[] {hotel.getHid()});
		return list;
	}

	@Override
	public void removeRoom(room room) {
		this.getHibernateTemplate().delete(room);
	}

	@Override
	public void updateRoom(room room) {
		
		System.out.println(room.getPrice());
		this.getHibernateTemplate().update(room);
	}

	@Override
	public room findRoomById(Integer id) {
		room room = (room) this.getHibernateTemplate().get(room.class, id);
		return room;
	}
	@Override
	public Hotel findHotelById(Integer id) {
		System.out.println("进入findhotelimpl");
		Hotel hotel = (Hotel) this.getHibernateTemplate().get(Hotel.class, id);
		return hotel;
	}
}
