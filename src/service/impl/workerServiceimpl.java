package service.impl;

import java.util.List;

import dao.workerDao;
import bean.Hotel;
import bean.hotel_worker;
import service.workerService;

public class workerServiceimpl implements workerService {
	private workerDao workerDao;

	/**
	 * ��ӹ���Ա
	 */
	@Override
	public void saveWorker(hotel_worker worker) {
		this.workerDao.saveWorker(worker);
	}

	/**
	 * ��ѯ���й���Ա
	 */
	@Override
	public List<hotel_worker> findAllworker() {
		return this.workerDao.findAllworker();
	}

	/**
	 * ɾ�����Ա
	 */
	@Override
	public void removeWorker(hotel_worker worker) {
		this.workerDao.removeWorker(worker);
	}

	/**
	 * �޸Ĺ���Ա
	 */
	@Override
	public void updateWorker(hotel_worker worker) {
		this.workerDao.updateWorker(worker);
	}

	/**
	 * ��ID����ָ������Ա
	 */
	@Override
	public hotel_worker findWorkerById(Integer id) {
		return this.workerDao.findWorkerById(id);
	}

	/**
	 * ����Ա��¼
	 */
	@Override
	public hotel_worker loginWorker(hotel_worker worker) {
		return this.workerDao.loginWorker(worker);
	}
	@Override
	public List<hotel_worker>findWorkerbyHid(Hotel hotel){
		return this.workerDao.findWorkerbyHid(hotel);
	}
	public workerDao getWorkerDao() {
		return workerDao;
	}

	public void setWorkerDao(workerDao workerDao) {
		this.workerDao = workerDao;
	}

	@Override
	public Hotel findHotelbyid(Integer id) {
		return this.workerDao.findHotelbyid(id);
	}

	@Override
	public Hotel findHotelById(Integer id) {
		
			return this.workerDao.findHotelById(id);
		}
	}

	


