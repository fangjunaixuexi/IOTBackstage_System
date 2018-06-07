package com.dajingzhu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dajingzhu.bean.Construction_site;
import com.dajingzhu.bean.Environmental_monitoring;
import com.dajingzhu.bean.Equipment;
import com.dajingzhu.bean.Location;
import com.dajingzhu.bean.Logindate;
import com.dajingzhu.bean.Safety_hat;
import com.dajingzhu.bean.User;
import com.dajingzhu.bean.Video_monitor;
import com.dajingzhu.bean.vo.PageBean;
import com.dajingzhu.mapper.IOTMapper;

@Service
public class IOTserviceImpl implements IOTservice {
	
	@Autowired
	private IOTMapper dao;

	@Override
	public List<Location> selectHatLocation() {
		return dao.selectHatLocation();
	}

	@Override
	public List<Equipment> selectEquipment() {
		return dao.selectEquipment();
	}

	@Override
	public List<Safety_hat> selectSafetyHat() {
		
		return dao.selectSafetyHat();
	}

	@Override
	public void insertSafety_hat(Safety_hat hat) {
				dao.insertSafety_hat(hat);
	}

	@Override
	public void deleteSafetyHat(Safety_hat hat) {
				dao.deleteSafetyHat(hat);
		
	}

	@Override
	public Safety_hat selectOneSafetyHat(Safety_hat hat) {
		
		return dao.selectOneSafetyHat(hat);
	}

	@Override
	public void updateSafetyHat(Safety_hat hat) {
           dao.updateSafetyHat(hat);
	}

	@Override
	public void insertEquipment(Equipment equipment) {
			dao.insertEquipment(equipment);
	}

	@Override
	public void deleteEquipment(Equipment equipment) {
		dao.deleteEquipment(equipment);
		
	}

	@Override
	public Equipment selectOneEquipment(Equipment equipment) {
		return dao.selectOneEquipment(equipment);
		
	}

	@Override
	public void updateEquipment(Equipment equipment) {
			dao.updateEquipment(equipment);
		
	}

	@Override
	public User findUser(User user) {
		
		return dao.findUser(user);
	}

	@Override
	public int selectCountUser() {
		return dao.selectCountUser();
	}

	@Override
	public int selectCountSafety_hat() {
		return dao.selectCountSafety_hat();
	}

	@Override
	public void insertLogindate(Logindate logindate) {
		dao.insertLogindate(logindate);
	}

	@Override
	public int selectCountEquipment() {
		
		return dao.selectCountEquipment();
	}

	@Override
	public int selectCountLogindate() {
		
		return dao.selectCountLogindate();
	}

	@Override
	public List<User> selectListUser() {
		
		return dao.selectListUser();
	}

	@Override
	public PageBean<User> findDepatrPageBean(int currentPageInt, int currentCount) {
		//获得depart总条数
		Integer totalCount = dao.selectCountUser();
		int totalPage = (int) Math.ceil(totalCount/(currentCount*1.0));
		//offset当前开始数据的下标
		int offset = (currentPageInt-1)*currentCount;
		PageBean<User> pageBean1 = new PageBean<>();
		pageBean1.setOffset(offset);
		pageBean1.setCurrentCount(currentCount);
		//获得分页后的数据
		List<User> pageData = dao.findDepartPageData(pageBean1);
		//封装pageBean
		PageBean<User> pageBean = new PageBean<>();
		pageBean.setCurrentCount(currentCount);
		pageBean.setCurrentPage(currentPageInt);
		pageBean.setOffset(offset);
		pageBean.setPageData(pageData);
		pageBean.setTotalCount(totalCount);
		pageBean.setTotalPage(totalPage);
		return pageBean;
	}

	@Override
	public void updateUserInformation(User user) {
		dao.updateUserInformation(user);
		
	}

	@Override
	public List<Logindate> selectLoginDate() {
		
		return dao.selectLoginDate();
	}

	@Override
	public void deleteLogindate() {
		dao.deleteLogindate();
	}

	@Override
	public PageBean<Environmental_monitoring> selectEnvironmental_monitoring(int currentPageInt, int currentCount) {
		//获得depart总条数
		//Integer totalCount = dao.selectCountEnvironmental_monitoring();
		Integer totalCount =300;
		int totalPage = (int) Math.ceil(totalCount/(currentCount*1.0));
		//offset当前开始数据的下标
		int offset = (currentPageInt-1)*currentCount;
		PageBean<Environmental_monitoring> pageBean1 = new PageBean<>();
		pageBean1.setOffset(offset);
		pageBean1.setCurrentCount(currentCount);
		//获得分页后的数据
		List<Environmental_monitoring> pageData = dao.findEnvironmental_monitoring(pageBean1);
		//封装pageBean
		PageBean<Environmental_monitoring> pageBean = new PageBean<>();
		pageBean.setCurrentCount(currentCount);
		pageBean.setCurrentPage(currentPageInt);
		pageBean.setOffset(offset);
		pageBean.setPageData(pageData);
		pageBean.setTotalCount(totalCount);
		pageBean.setTotalPage(totalPage);
		return pageBean;
	}

	@Override
	public PageBean<Location> selectLocation(int currentPageInt, int currentCount) {
		//获得depart总条数
		//Integer totalCount = dao.selectCountLocation();
		Integer totalCount =300;
		int totalPage = (int) Math.ceil(totalCount/(currentCount*1.0));
		//offset当前开始数据的下标
		int offset = (currentPageInt-1)*currentCount;
		PageBean<Location> pageBean1 = new PageBean<>();
		pageBean1.setOffset(offset);
		pageBean1.setCurrentCount(currentCount);
		//获得分页后的数据
		List<Location> pageData = dao.findLocation(pageBean1);
		//封装pageBean
		PageBean<Location> pageBean = new PageBean<>();
		pageBean.setCurrentCount(currentCount);
		pageBean.setCurrentPage(currentPageInt);
		pageBean.setOffset(offset);
		pageBean.setPageData(pageData);
		pageBean.setTotalCount(totalCount);
		pageBean.setTotalPage(totalPage);
		return pageBean;
	}

	@Override
	public List<Construction_site> selectConstruction_site() {
		
		return dao.selectConstruction_site();
	}

	@Override
	public User selectOneUser(User user) {
		
		return dao.selectOneUser(user);
	}

	@Override
	public void insertUser(User user) {
		
		dao.insertUser(user);
	}

	@Override
	public void deleteUser(User user) {

		dao.deleteUser(user);
	}

	@Override
	public List<Video_monitor> selectVideo_monitor() {
		
		return dao.selectVideo_monitor();
	}

	@Override
	public void insertVideo_monitor(Video_monitor video_monitor) {
		dao.insertVideo_monitor(video_monitor);
	}

	@Override
	public void deleteVideo_monitor(Video_monitor video_monitor) {
		dao.deleteVideo_monitor(video_monitor);
	}

	@Override
	public Video_monitor selectOneVideo_monitor(Video_monitor video_monitor) {

		return dao.selectOneVideo_monitor(video_monitor);
	}

	@Override
	public Construction_site selectOneConstruction_site(int c_id) {

		return dao.selectOneConstruction_site(c_id);
	}

	@Override
	public void updateVideo_monitor(Video_monitor video_monitor) {

		dao.updateVideo_monitor(video_monitor);
		
	}



	

}
