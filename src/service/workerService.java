package service;



import java.util.List;

import bean.Hotel;
import bean.hotel_worker;
import bean.room;

/**
 * ����Ա����Ľӿ�
 * 
 * @author ��
 * 
 */
public interface workerService {
	public void saveWorker(hotel_worker worker);// ��ӹ���Ա

	public List<hotel_worker> findAllworker();// ��ѯ���й���Ա
	public List<hotel_worker>findWorkerbyHid(Hotel hotel);
	public void removeWorker(hotel_worker worker);// ɾ�����Ա
public Hotel findHotelbyid(Integer id);
	public void updateWorker(hotel_worker worker);// �޸Ĺ���Ա

	public hotel_worker findWorkerById(Integer id);// ��ID��ѯָ������Ա

	public hotel_worker loginWorker(hotel_worker worker);// ����Ա��¼
	public bean.Hotel findHotelById(Integer id);

}
