package dao;

import java.util.List;

import bean.Hotel;;

/**
 * �������Ľӿ�
 * 
 * @author ��
 * 
 */
public interface hotelDao {
	public void saveHotel(Hotel hotel);// ��ӷ���

	public List<Hotel> findAllHotel();// ��ѯ���з���

	public List<Hotel>findHotelbynameandcity(String name,String city);

	public void updateHotel(Hotel hotel);// �޸ķ���

	public bean.Hotel findHotelById(Integer id);// ��ID����ָ������

	
}

