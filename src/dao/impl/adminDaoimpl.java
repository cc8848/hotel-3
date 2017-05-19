package dao.impl;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.adminDao;
import bean.Admin;
import bean.hotel_worker;
public class adminDaoimpl extends HibernateDaoSupport implements adminDao {
	@Override
	public void saveAdmin(Admin admin) {
		this.getHibernateTemplate().save(admin);
	}
	@Override
	@SuppressWarnings("unchecked")
	public Admin loginAdmin(Admin admin) {
		String hql = "from Admin a where a.aname = ? and a.password = ?";
	
		List<Admin> admins = (List<Admin>) this.getHibernateTemplate().find(
			hql, new Object[] {admin.getAname(), admin.getPassword()});
		if(admins.size() > 0){
			return admins.get(0);
		}
		return null;
	}
	@Override
	public Admin findAdminbyid(Integer id) {
		Admin admin = (Admin) this.getHibernateTemplate().get(Admin.class, id);
		return admin;
	}
}
