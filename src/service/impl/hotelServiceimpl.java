package service.impl;

import java.util.List;

import dao.hotelDao;
import bean.Hotel;
import service.hotelService;

public class hotelServiceimpl implements hotelService {
	private hotelDao hotelDao;
	/**
	 * ��ӷ���
	 */
	@Override
	public void saveHotel(Hotel hotel) {
		this.hotelDao.saveHotel(hotel);
	}
	/**
	 * ��ѯ���з���
	 */
	@Override
	public List<Hotel> findAllHotel() {
		return this.hotelDao.findAllHotel();
	}
	/**
	 * ɾ���
	 */
	
	/**
	 * �޸ķ���
	 */
	@Override
	public void updateHotel(Hotel hotel) {
		this.hotelDao.updateHotel(hotel);
	}
	/**
	 * ��ID����ָ������
	 */
	@Override
	public Hotel findHotelById(Integer id) {
		return this.hotelDao.findHotelById(id);
	}
	
	public hotelDao getHotelDao() {
		return hotelDao;
	}
	public void setHotelDao(hotelDao hotelDao) {
		this.hotelDao = hotelDao;
	}
	@Override
	public List<Hotel> findHotelbynameandcity(String name,String city) {
		return hotelDao.findHotelbynameandcity(name,city);
	}
	
	
	

	
}