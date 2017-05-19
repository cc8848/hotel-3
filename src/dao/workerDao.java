
package dao;
import java.util.List;

import bean.Hotel;
import bean.hotel_worker;

/**
 * ����Ա����Ľӿ�
 * 
 * @author ��
 * 
 */
public interface workerDao {
	public void saveWorker(hotel_worker worker);// ��ӹ���Ա

	public List<hotel_worker> findAllworker();// ��ѯ���й���Ա
	public List<hotel_worker>findWorkerbyHid(Hotel hotel);
	public void removeWorker(hotel_worker worker);// ɾ�����Ա

	public void updateWorker(hotel_worker worker);// �޸Ĺ���Ա

	public hotel_worker findWorkerById(Integer id);// ��ID��ѯָ������Ա
public Hotel findHotelbyid(Integer id);
	public hotel_worker loginWorker(hotel_worker worker);// ����Ա��¼
	public bean.Hotel findHotelById(Integer id);
	


}



