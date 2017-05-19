package dao;

import java.util.List;

import bean.Hotel;
import bean.room;;

/**
 * �������Ľӿ�
 * 
 * @author ��
 * 
 */
public interface RoomDao {
	public void saveRoom(room room);// ��ӷ���

	public List<room> findRoombyHid(Hotel hotel);// ��ѯ���з���

	public void removeRoom(room room);// ɾ���

	public void updateRoom(room room);// �޸ķ���

	public room findRoomById(Integer id);// ��ID����ָ������

	public bean.Hotel findHotelById(Integer id);
	
}

