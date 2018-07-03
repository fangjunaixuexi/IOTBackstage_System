package com.dajingzhu.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
import com.dajingzhu.service.IOTservice;

/**
 * @author fangjun
 * @date 2018年6月27日  
 * @version 1.0 
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {

	@Autowired
	private IOTservice service;

	@RequestMapping(value = "tologin")
	public String tologin() {
		return "login";
	}

	// 验证登录
	@RequestMapping(value = "toVerification", produces = "plain/text;charset=UTF-8")
	@ResponseBody
	public String toVerification(User user, HttpSession session) {
		User userSession = service.findUser(user);
		Logindate logindate = new Logindate();
		if (userSession != null) {
			session.setAttribute("userSession", userSession);
			String loginname = userSession.getUsername();
			logindate.setUsername(loginname);
			String Nowtime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
			logindate.setLogintime(Nowtime);
			service.insertLogindate(logindate);
			return "1";
		}
		return "0";
	}

	@RequestMapping(value = "toindex")
	public String toindex(HttpServletRequest request, HttpSession session) {
		int countuser = service.selectCountUser();
		int countsafety_hat = service.selectCountSafety_hat();
		int countequipment = service.selectCountEquipment();
		int countlogindate = service.selectCountLogindate();
		List<User> listuserSession = service.selectListUser();
		session.setAttribute("countuser", countuser);
		session.setAttribute("countsafety_hat", countsafety_hat);
		session.setAttribute("countequipment", countequipment);
		session.setAttribute("countlogindate", countlogindate);
		session.setAttribute("listuserSession", listuserSession);
		String currentPage = request.getParameter("currentPage");
		int currentPageInt = 1;
		if (currentPage != null && !"".equals(currentPage)) {
			currentPageInt = Integer.parseInt(currentPage);
		}
		// 设置每页显示的数据条数
		int currentCount = 20;

		// 传递业务 得到pageBean对象
		PageBean<User> pageBean = service.findDepatrPageBean(currentPageInt, currentCount);
		// 封装数据到域对象
		request.setAttribute("pageBean", pageBean);

		List<ConstructionSite> construction_siteSession = service.selectConstruction_site();
		session.setAttribute("construction_siteSession", construction_siteSession);
		return "index";
	}

	// 安全帽定位数据
	@RequestMapping(value = "toSafetyHelmetData")
	public String tosafety(HttpServletRequest request, HttpSession session) {
		List<Location> locationSession = service.selectHatLocation();
		session.setAttribute("locationSession", locationSession);
		String currentPage = request.getParameter("currentPage");
		int currentPageInt = 1;
		if (currentPage != null && !"".equals(currentPage)) {
			currentPageInt = Integer.parseInt(currentPage);
		}
		// 设置每页显示的数据条数
		int currentCount = 15;

		// 传递业务 得到pageBean对象
		PageBean<Location> pageBean2 = service.selectLocation(currentPageInt, currentCount);
		// 封装数据到域对象
		request.setAttribute("pageBean2", pageBean2);
		return "Safety_hatinformation";
	}

	// 环境数据
	@RequestMapping(value = "toenvironment")
	public String toenvironment(HttpServletRequest request, HttpSession session) {
		String currentPage = request.getParameter("currentPage");
		int currentPageInt = 1;
		if (currentPage != null && !"".equals(currentPage)) {
			currentPageInt = Integer.parseInt(currentPage);
		}
		// 设置每页显示的数据条数
		int currentCount = 15;

		// 传递业务 得到pageBean对象
		PageBean<Environmental_monitoring> pageBean1 = service.selectEnvironmental_monitoring(currentPageInt,
				currentCount);
		// 封装数据到域对象
		request.setAttribute("pageBean1", pageBean1);
		return "Environment";
	}

	// 环境监控设备
	@RequestMapping(value = "toequipment")
	public String toequipment(HttpSession session) {
		List<Equipment> equipmentSession = service.selectEquipment();
		session.setAttribute("equipmentSession", equipmentSession);
		return "Equipment";
	}

	// 安全帽设备
	@RequestMapping(value = "toSafetyHat")
	public String toSafetyHat(HttpSession session) {
		List<Safety_hat> safety_hatSession = service.selectSafetyHat();
		session.setAttribute("safety_hatSession", safety_hatSession);
		return "SafetyHat";
	}

	// 跳转增加安全帽页面
	@RequestMapping(value = "toaddsafetyhat")
	public String toaddsafetyhat(HttpSession session) {
		List<ConstructionSite> construction_siteSession = service.selectConstruction_site();
		session.setAttribute("construction_siteSession", construction_siteSession);
		List<Workman> listWorkmanSession =service.selectWorkman();
		session.setAttribute("listWorkmanSession", listWorkmanSession);
		List<Grouping> listGroupingSession=service.selectAllGrouping();
		session.setAttribute("listGroupingSession",listGroupingSession);
		return "Addsafetyhat";
	}

	//修改c_id
	// 添加安全帽数据toinsertSafetyHat
	@RequestMapping(value = "toinsertSafetyHat")
	public String toinsertSafetyHat(Safety_hat hat) {
		String Workman_name=service.selectOneWorkman(hat.getWorkman_id());
		ConstructionSite construction_site=service.selectOneConstruction_site(hat.getRegionid());
		Grouping grouping=service.selectOneGrouping(hat.getGroupingnumber());
		hat.setWorkman_name(Workman_name);
		hat.setBelong(construction_site.getRegionname());
		hat.setGroupingname(grouping.getGroupingname());
		service.insertSafety_hat(hat);
		return "redirect:toSafetyHat";
	}

	// 删除安全帽设备
	@RequestMapping(value = "todeletesafetyhat")
	public String todeletesafetyhat(Safety_hat hat) {
		service.deleteSafetyHat(hat);
		return "redirect:toSafetyHat";
	}

	// 跳转修改安全帽设备
	@RequestMapping(value = "toeditsafetyhat")
	public String toeditsafetyhat(Safety_hat hat, HttpSession session) {
		Safety_hat safety_hatSession = service.selectOneSafetyHat(hat);
		session.setAttribute("safety_hatSession", safety_hatSession);
		List<ConstructionSite> construction_siteSession = service.selectConstruction_site();
		session.setAttribute("construction_siteSession", construction_siteSession);
		List<Workman> listWorkmanSession =service.selectWorkman();
		session.setAttribute("listWorkmanSession", listWorkmanSession);
		List<Grouping> listGroupingSession=service.selectAllGrouping();
		session.setAttribute("listGroupingSession",listGroupingSession);
		return "EditSafetyHat";
	}

	//修改c_id
	// 修改安全帽设备数据
	@RequestMapping(value = "toupdateSafetyHat")
	public String toupdateSafetyHat(Safety_hat hat) {
		String Workman_name=service.selectOneWorkman(hat.getWorkman_id());
		ConstructionSite construction_site=service.selectOneConstruction_site(hat.getRegionid());
		hat.setWorkman_name(Workman_name);
		hat.setBelong(construction_site.getRegionname());
		Grouping grouping=service.selectOneGrouping(hat.getGroupingnumber());
		hat.setGroupingname(grouping.getGroupingname());
		service.updateSafetyHat(hat);
		return "redirect:toSafetyHat";
	}

	// 跳转添加环境监控设备页面
	@RequestMapping(value = "toaddequipment")
	public String toaddequipment(HttpSession session) {
		List<ConstructionSite> construction_siteSession = service.selectConstruction_site();
		session.setAttribute("construction_siteSession", construction_siteSession);
	
		return "Addequipment";
	}

	//修改c_id
	// 添加监控设备
	@RequestMapping(value = "toinsertequipment")
	public String toinsertequipment(Equipment equipment) {
		ConstructionSite oneConstruction_site = service.selectOneConstruction_site(equipment.getRegionid());
		equipment.setBelong(oneConstruction_site.getRegionname());
		service.insertEquipment(equipment);
		return "redirect:toequipment";
	}

	// 删除监控设备
	@RequestMapping(value = "todeleteequipment")
	public String todeleteequipment(Equipment equipment) {
		service.deleteEquipment(equipment);
		return "redirect:toequipment";
	}

	// 跳转修改环境监控设备页面
	@RequestMapping(value = "toeditequipment")
	public String toeditequipment(Equipment equipment, HttpSession session) {
		Equipment oneEquipment = service.selectOneEquipment(equipment);
		session.setAttribute("oneEquipment", oneEquipment);
		List<ConstructionSite> construction_siteSession = service.selectConstruction_site();
		session.setAttribute("construction_siteSession", construction_siteSession);
		return "Editequipment";
	}

	//修改c_id
	// 修改环境监控设备
	@RequestMapping(value = "toupdateequipment")
	public String toupdateequipment(Equipment equipment) {
		ConstructionSite oneConstruction_site = service.selectOneConstruction_site(equipment.getRegionid());
		equipment.setBelong(oneConstruction_site.getRegionname());
		service.updateEquipment(equipment);
		return "redirect:toequipment";
	}

	// 跳转个人详细信息
	@RequestMapping(value = "touserinformation")
	public String touserinformation(HttpSession session) {
		User userSession = (User) session.getAttribute("userSession");
		if (userSession == null) {
			return "redirect:tologin";
		}
		return "Userinformation";
	}

	// 修改个人信息toupdateUser
	@RequestMapping(value = "toupdateUser")
	public String toupdateUser(HttpServletRequest request,User user) {
		String regionid = request.getParameter("regionid");
		service.updateUserInformation(user,regionid);
		return "redirect:tologin";
	}

	// 查找所有的登录日志toLogindate
	@RequestMapping(value = "toLogindate")
	public String toLogindate(HttpSession session) {
		List<Logindate> loginSession = service.selectLoginDate();
		session.setAttribute("loginSession", loginSession);
		return "Logindate";
	}

	// 删除所有的登录日志todeletelogindate
	@RequestMapping(value = "todeletelogindate")
	public String todeletelogindate() {
		service.deleteLogindate();
		return "redirect:toindex";
	}

	// 跳转修改用户信息页面
	@RequestMapping(value = "toeditUserInfo")
	public String toeditUserInfo(User user, HttpSession session) {
		User userOneSession = service.selectOneUser(user);
		session.setAttribute("userOneSession", userOneSession);
		return "Edituserinfo";
	}

	// 修改用户toeditUser
	@RequestMapping(value = "toeditUser")
	public String toeditUser(HttpServletRequest request,User user) {
		String regionid = request.getParameter("regionid");
		service.updateUserInformation(user,regionid);
		return "redirect:toindex";
	}

	// 跳转添加用户toaddUser页面
	@RequestMapping(value = "toaddUser")
	public String toaddUser() {
		return "Adduser";

	}
	


  /**
 * @param request
 * @param user
 * @return
 */
  //toinsertUser添加用户
  @RequestMapping(value = "toinsertUser")
  public String toinsertUser(HttpServletRequest request,User user) {
    String regionid = request.getParameter("regionid");
    //System.out.println(regionid);
    service.insertUser(user,regionid);
    return "redirect:toindex";
	}
  
	//todeleteUser删除用户
	@RequestMapping(value = "todeleteUser")
	public String todeleteUser(User user) {
		service.deleteUser(user);
		return "redirect:toindex";
	}
	//跳转视频监控设备表格页面tovideo_monitor
	@RequestMapping(value = "tovideo_monitor")
	public String tovideo_monitor(HttpSession session) {
		List<Video_monitor> videoListSession=service.selectVideo_monitor();
		session.setAttribute("videoListSession", videoListSession);
		return "Video_monitor";
	}
	//跳转添加视频监控设备toaddVideo_monitor
	@RequestMapping(value = "toaddVideo_monitor")
	public String toaddVideo_monitor(HttpSession session) {
		List<ConstructionSite> construction_siteSession = service.selectConstruction_site();
		session.setAttribute("construction_siteSession", construction_siteSession);
		return "Addvideo_monitor";
	}
	
	//修改c-id
	//toinsertvideo_monitor添加视频监控设备
	@RequestMapping(value = "toinsertvideo_monitor")
	public String toinsertvideo_monitor(Video_monitor video_monitor,HttpSession session) {
		ConstructionSite construction_site=service.selectOneConstruction_site(video_monitor.getRegionid());
		video_monitor.setBelong(construction_site.getRegionname());
		service.insertVideo_monitor(video_monitor);
		return "redirect:tovideo_monitor";
	}
	//todeleteVideo_monitor删除视频监控设备
	@RequestMapping(value = "todeleteVideo_monitor")
	public String todeleteVideo_monitor(Video_monitor video_monitor) {
		service.deleteVideo_monitor(video_monitor);
		return "redirect:tovideo_monitor";
	}
	//跳转修改视频监控设备页面toeditVideo_monitor
	@RequestMapping(value = "toeditVideo_monitor")
	public String toeditVideo_monitor(Video_monitor video_monitor,HttpSession session) {
		Video_monitor Onevideo_monitorSession=	service.selectOneVideo_monitor(video_monitor);
		session.setAttribute("Onevideo_monitorSession", Onevideo_monitorSession);
		List<ConstructionSite> construction_siteSession = service.selectConstruction_site();
		session.setAttribute("construction_siteSession", construction_siteSession);
		return "EditVideo_monitor";
	}
	
	//修改C_id
	//修改视频监控设备toupdatevideo_monitor
	@RequestMapping(value = "toupdatevideo_monitor")
	public String toupdateVideo_monitor(Video_monitor video_monitor) {
		ConstructionSite construction_site=service.selectOneConstruction_site(video_monitor.getRegionid());
		video_monitor.setBelong(construction_site.getRegionname());
		service.updateVideo_monitor(video_monitor);
		return "redirect:tovideo_monitor";
	}
	//getpower1
	@RequestMapping(value = "/getpower1")
	@ResponseBody
	public List<Power> selectPower1() {
		List<Power> listpower1=service.selectPower1();
		return listpower1;
	}
	
	@RequestMapping(value = "/getpower2")
	@ResponseBody
	public List selectPower2(HttpServletRequest request) {
		//List<Power> listpower1=service.selectPower2();
		String power_id = request.getParameter("power_id");
		Integer option = Integer.valueOf(power_id);
		//System.out.println(power_id);
		if(option==7) {
			List<ConstructionSite> listConstructionSite=service.selectConstruction_site();
			return listConstructionSite;
		}
		if(option==6) {
			List<RegionAdministration> listRegionAdministration=service.selectRegionAdministration();
			return listRegionAdministration;
		}
		return null;
	}
	//toTowerCrane跳转塔机设备页面
	@RequestMapping(value = "toTowerCrane")
	public String selectTowerCrane(HttpSession session) {
		List<TowerCrane> listTowerCrane=service.selectTowerCrane();
		session.setAttribute("listTowerCrane", listTowerCrane);
		return "TowerCrane";
	}
//toeditTowerCrane跳转修改塔机设备页面
	@RequestMapping(value = "toeditTowerCrane")
	public String editTowerCrane(TowerCrane towercran,HttpSession session) {
		TowerCrane towerCraneSession=service.selectOneTowerCrane(towercran);
		List<ConstructionSite> listConstructionSite=service.selectConstruction_site();
		session.setAttribute("towerCraneSession", towerCraneSession);
		session.setAttribute("listConstructionSite", listConstructionSite);
		return "EditTowerCrane";
	}
	
	//toupdateTowerCrane修改塔机
	@RequestMapping(value = "toupdateTowerCrane")
	public String updateTowerCrane(TowerCrane towercrane) {
		ConstructionSite construction_site=service.selectOneConstruction_site(towercrane.getRegionid());
		towercrane.setBelong(construction_site.getRegionname());
		service.updateTowerCrane(towercrane);
		return "redirect:toTowerCrane";
	}
	//toaddTowerCrane跳转添加塔机设备页面
	@RequestMapping(value = "toaddTowerCrane")
	public String addTowerCrane(HttpSession session) {
		List<ConstructionSite> listConstructionSite=service.selectConstruction_site();
		session.setAttribute("listConstructionSite", listConstructionSite);
		return "AddTowerCrane";
	}
	//toinsertTowerCrane添加塔机
	@RequestMapping(value = "toinsertTowerCrane")
	public String insertTowerCrane(TowerCrane towercrane,HttpSession session) {
		ConstructionSite construction_site=service.selectOneConstruction_site(towercrane.getRegionid());
		towercrane.setBelong(construction_site.getRegionname());
		service.insertTowerCrane(towercrane);
		return "redirect:toTowerCrane";
	}
	//todeleteTowerCrane删除塔机
	@RequestMapping(value = "todeleteTowerCrane")
	public String deleteTowerCrane(TowerCrane towercrane,HttpSession session) {
		service.delectTowerCrane(towercrane);
		return "redirect:toTowerCrane";
	}
	//toConstructionSite跳转工地管理页面
	@RequestMapping(value = "toConstructionSite")
	public String selectConstructionSite(HttpSession session) {
		List<ConstructionSite> listConstructionSiteSession=service.selectConstruction_site();
		session.setAttribute("listConstructionSiteSession", listConstructionSiteSession);
		return "ConstructionSite";
	}
	//toaddConstructionSite跳转添加工地页面
	@RequestMapping(value = "toaddConstructionSite")
	public String addConstructionSite(HttpSession session) {
		List<RegionAdministration> listRegionAdministrationSession=service.selectRegionAdministration();
		session.setAttribute("listRegionAdministrationSession", listRegionAdministrationSession);
		return "AddConstructionSite";
	}
	//toinsertConstructionSite添加工地
	@RequestMapping(value = "toinsertConstructionSite")
	public String insertConstructionSite(ConstructionSite constructionsite) {
		service.insertConstructionSite(constructionsite);
		return "redirect:toConstructionSite";
	}
	//toeditConstructionSite跳转修改工地页面
	@RequestMapping(value = "toeditConstructionSite")
	public String editConstructionSite(ConstructionSite constructionsite,HttpSession session) {
		ConstructionSite constructionSiteSession=service.selectConstructionSite(constructionsite.getC_id());
		List<RegionAdministration> listRegionAdministrationSession=service.selectRegionAdministration();
		session.setAttribute("listRegionAdministrationSession", listRegionAdministrationSession);
		session.setAttribute("constructionSiteSession", constructionSiteSession);
		return "EditConstructionSite";
	}
	//toupdateConstructionSite
	@RequestMapping(value = "toupdateConstructionSite")
	public String updateConstructionSite(ConstructionSite constructionsite) {
		service.updateConstructionSite(constructionsite);
		return "redirect:toConstructionSite ";
	}
	//todeleteConstructionSite删除工地
	@RequestMapping(value = "todeleteConstructionSite")
	public String deleteConstructionSite(ConstructionSite constructionsite) {
		service.deleteConstructionSite(constructionsite.getC_id());
		return "redirect:toConstructionSite ";
	}
}