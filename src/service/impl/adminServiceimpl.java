package service.impl;
import service.adminService;

import java.util.List;

import bean.Admin;
import dao.adminDao;

public class adminServiceimpl implements adminService{
	private adminDao adminDao;
	@Override
	public void saveAdmin(Admin admin) {
		this.adminDao.saveAdmin(admin);
	}
	@Override
	public Admin loginAdmin(Admin admin) {
		return this.adminDao.loginAdmin(admin);
	}
	public adminDao getAdminDao() {
		return adminDao;
	}
	public void setAdminDao(adminDao adminDao) {
		this.adminDao = adminDao;
	}
	@Override
	public Admin findAdminbyid(Integer id) {
		return this.adminDao.findAdminbyid(id);
	}

}
