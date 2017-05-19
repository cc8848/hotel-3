package dao.impl;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;





import dao.hotelDao;
import bean.Hotel;


public class hotelDaoimpl  extends HibernateDaoSupport implements hotelDao{
	@Override
	public void saveHotel(Hotel hotel) {
		this.getHibernateTemplate().save(hotel);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Hotel> findAllHotel() {
		String hql = "from Hotel h order by h.hid desc";
		List<Hotel> list = (List<Hotel>) this.getHibernateTemplate().find(hql);
		return list;
	}

	
	@Override
	public void updateHotel(Hotel hotel) {
		this.getHibernateTemplate().update(hotel);
	}

	@Override
	public Hotel findHotelById(Integer id) {
		System.out.println("进入findhotebyidlimpl");
		Hotel hotel = (Hotel) this.getHibernateTemplate().get(Hotel.class, id);
		return hotel;
	}

	@Override
	public List<Hotel> findHotelbynameandcity(String name,String city) {
		String hql = "from Hotel h  where h.hname like? and h.city like?";
		@SuppressWarnings("unchecked")
		List<Hotel> list = (List<Hotel>) this.getHibernateTemplate().find(hql,"%"+name+"%","%"+city+"%");
		return list;
	}

	

}
