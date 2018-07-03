package com.dajingzhu.service;

import java.util.List;

import com.dajingzhu.bean.ConstructionSite;
import com.dajingzhu.bean.Environmental_monitoring;
import com.dajingzhu.bean.Equipment;
import com.dajingzhu.bean.Grouping;
import com.dajingzhu.bean.Location;
import com.dajingzhu.bean.Logindate;
import com.dajingzhu.bean.Power;
import com.dajingzhu.bean.RegionAdministration;
import com.dajingzhu.bean.Safety_hat;
import com.dajingzhu.bean.TowerCrane;
import com.dajingzhu.bean.User;
import com.dajingzhu.bean.Video_monitor;
import com.dajingzhu.bean.Workman;
import com.dajingzhu.bean.vo.PageBean;

public interface IOTservice {
	List<Location> selectHatLocation();

	PageBean<Environmental_monitoring> selectEnvironmental_monitoring(int currentPageInt, int currentCount);

	List<Equipment> selectEquipment();

	List<Safety_hat> selectSafetyHat();

	void insertSafety_hat(Safety_hat hat);

	void deleteSafetyHat(Safety_hat hat);

	Safety_hat selectOneSafetyHat(Safety_hat hat);

	void updateSafetyHat(Safety_hat hat);

	void insertEquipment(Equipment equipment);

	void deleteEquipment(Equipment equipment);

	Equipment selectOneEquipment(Equipment equipment);

	void updateEquipment(Equipment equipment);

	User findUser(User user);

	int selectCountUser();

	int selectCountSafety_hat();

	void insertLogindate(Logindate logindate);

	int selectCountEquipment();

	int selectCountLogindate();

	List<User> selectListUser();

	PageBean<User> findDepatrPageBean(int currentPageInt, int currentCount);

	void updateUserInformation(User user, String regionid);

	List<Logindate> selectLoginDate();

	void deleteLogindate();

	PageBean<Location> selectLocation(int currentPageInt, int currentCount);

	List<ConstructionSite> selectConstruction_site();

	User selectOneUser(User user);

	void insertUser(User user, String regionid);

	void deleteUser(User user);

	List<Video_monitor> selectVideo_monitor();

	void insertVideo_monitor(Video_monitor video_monitor);

	void deleteVideo_monitor(Video_monitor video_monitor);

	Video_monitor selectOneVideo_monitor(Video_monitor video_monitor);

	ConstructionSite selectOneConstruction_site(String regionid);

	void updateVideo_monitor(Video_monitor video_monitor);

	List<Workman> selectWorkman();

	String selectOneWorkman(int workman_id);

	List<Power> selectPower1();

	List<RegionAdministration> selectRegionAdministration();

	List<TowerCrane> selectTowerCrane();

	List<Grouping> selectAllGrouping();

	Grouping selectOneGrouping(String groupingnumber);

	TowerCrane selectOneTowerCrane(TowerCrane towercran);

	void insertTowerCrane(TowerCrane towercrane);

	void delectTowerCrane(TowerCrane towercrane);

	void updateTowerCrane(TowerCrane towercrane);

	void insertConstructionSite(ConstructionSite constructionsite);

	ConstructionSite selectConstructionSite(int c_id);

	void updateConstructionSite(ConstructionSite constructionsite);

	void deleteConstructionSite(int c_id);





}
