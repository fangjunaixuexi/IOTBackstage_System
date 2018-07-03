package com.dajingzhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

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

@Repository
public interface IOTMapper {

	List<Location> selectHatLocation();

	List<Environmental_monitoring> selectEnvironmental_monitoring();

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

	List<User> findDepartPageData(PageBean<User> pageBean1);

	void updateUserInformation(User user);

	List<Logindate> selectLoginDate();

	void deleteLogindate();


	Integer selectCountEnvironmental_monitoring();

	List<Environmental_monitoring> findEnvironmental_monitoring(PageBean<Environmental_monitoring> pageBean1);

	Integer selectCountLocation();

	List<Location> findLocation(PageBean<Location> pageBean1);

	List<ConstructionSite> selectConstruction_site();

	User selectOneUser(User user);

	void insertUser(User user);

	void deleteUser(User user);

	List<Video_monitor> selectVideo_monitor();

	void insertVideo_monitor(Video_monitor video_monitor);

	void deleteVideo_monitor(Video_monitor video_monitor);

	Video_monitor selectOneVideo_monitor(Video_monitor video_monitor);

	ConstructionSite selectOneConstruction_site(@Param(value="regionid") String regionid);

	void updateVideo_monitor(Video_monitor video_monitor);

	List<Workman> selectWorkman();

	String selectOneWorkman(int workman_id);

	List<Power> selectPower1();

	int selectPowerNewInfo();

	Power selectPower(@Param(value="regionid")String regionid);

	List<RegionAdministration> selectRegionAdministration();

	List<TowerCrane> selectTowerCrane();

	List<Grouping> selectAllGrouping();

	Grouping selectOneGrouping(@Param(value="groupingnumber")String groupingnumber);

	TowerCrane selectOneTowerCrane(TowerCrane towercran);

	void insertTowerCrane(TowerCrane towercrane);

	void deleteTowerCrane(TowerCrane towercrane);

	void updateTowerCrane(TowerCrane towercrane);

	Power selectPowerById(@Param("power_id")int power_id);

	void insertPower(Power power3);

	String selectAdminissration(@Param("father")int father);

	void insertConstructionSite(ConstructionSite constructionsite);

	ConstructionSite selectConstructionSite(@Param("c_id")int c_id);

	void updateConstructionSite(ConstructionSite constructionsite);

	void deleteConstructionSite(@Param("c_id")int c_id);





	

}
