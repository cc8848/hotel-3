package dao.impl;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.workerDao;
import bean.Hotel;
import bean.hotel_worker;
import bean.room;
public class workerDaoimpl extends HibernateDaoSupport implements workerDao {
	@Override
	public void saveWorker(hotel_worker worker) {
		this.getHibernateTemplate().save(worker);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<hotel_worker> findAllworker() {
		String hql = "from hotel_worker w order by w.wid desc";
		List<hotel_worker> workers = (List<hotel_worker>) this.getHibernateTemplate()
				.find(hql);
		return workers;
	}

	@Override
	public void removeWorker(hotel_worker worker) {
		this.getHibernateTemplate().delete(worker);
	}

	@Override
	public void updateWorker(hotel_worker worker) {
		this.getHibernateTemplate().update(worker);
	}

	@Override
	public hotel_worker findWorkerById(Integer id) {
		hotel_worker admin = (hotel_worker) this.getHibernateTemplate().get(hotel_worker.class, id);
		return admin;
	}
	@Override
	public List<hotel_worker>findWorkerbyHid(Hotel hotel){
		String hql = "from hotel_worker w where  w.hotels.hid=?";
		List<hotel_worker> list = (List<hotel_worker>) this.getHibernateTemplate().find(hql,
				new Object[] {hotel.getHid()});
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public hotel_worker loginWorker(hotel_worker worker) {
		String hql = "from hotel_worker w where w.name = ? and w.password = ?";
		List<hotel_worker> workers = (List<hotel_worker>) this.getHibernateTemplate().find(
			hql, new Object[] {worker.getName(), worker.getPassword()/*"man","123"*/});
		if(workers.size() > 0){
			return workers.get(0);
		}
		return null;
	}
	@Override
	public Hotel findHotelbyid(Integer id) {
		Hotel hotel = (Hotel) this.getHibernateTemplate().get(Hotel.class, id);
		return hotel;
	}
	@Override
	public Hotel findHotelById(Integer id) {
		System.out.println("进入findhotelimpl");
		Hotel hotel = (Hotel) this.getHibernateTemplate().get(Hotel.class, id);
		return hotel;
	}
}
