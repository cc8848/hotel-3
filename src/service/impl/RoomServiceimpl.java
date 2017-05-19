package service.impl;

import java.util.List;

import dao.RoomDao;
import bean.Hotel;
import bean.room;
import service.RoomService;

public class RoomServiceimpl implements RoomService {
	private RoomDao roomDao;
	/**
	 * ��ӷ���
	 */
	@Override
	public void saveRoom(room room) {
		this.roomDao.saveRoom(room);
	}
	/**
	 * ��ѯ���з���
	 */
	@Override
	public List<room> findRoombyHid(Hotel hotel) {
		return this.roomDao.findRoombyHid(hotel);
	}
	/**
	 * ɾ���
	 */
	@Override
	public void removeRoom(room room) {
		this.roomDao.removeRoom(room);
	}
	/**
	 * �޸ķ���
	 */
	@Override
	public void updateRoom(room room) {
		this.roomDao.updateRoom(room);
	}
	/**
	 * ��ID����ָ������
	 */
	@Override
	public room findRoomById(Integer id) {
		return this.roomDao.findRoomById(id);
	}
	public bean.Hotel findHotelById(Integer id){
		return this.roomDao.findHotelById(id);
	}
	public RoomDao getRoomDao() {
		return roomDao;
	}
	public void setRoomDao(RoomDao roomDao) {
		this.roomDao = roomDao;
	}


	
}