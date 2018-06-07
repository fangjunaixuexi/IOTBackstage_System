package com.dajingzhu.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dajingzhu.bean.Construction_site;
import com.dajingzhu.bean.Environmental_monitoring;
import com.dajingzhu.bean.Equipment;
import com.dajingzhu.bean.Location;
import com.dajingzhu.bean.Logindate;
import com.dajingzhu.bean.Safety_hat;
import com.dajingzhu.bean.User;
import com.dajingzhu.bean.Video_monitor;
import com.dajingzhu.bean.vo.PageBean;
import com.dajingzhu.service.IOTservice;

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

		List<Construction_site> construction_siteSession = service.selectConstruction_site();
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
		for (Equipment equipment : equipmentSession) {
			Construction_site oneConstruction_site = service.selectOneConstruction_site(equipment.getC_id());
			equipment.setBelong(oneConstruction_site.getC_name());
		}
		session.setAttribute("equipmentSession", equipmentSession);
		return "Equipment";
	}

	// 安全帽设备
	@RequestMapping(value = "toSafetyHat")
	public String toSafetyHat(HttpSession session) {
		List<Safety_hat> safety_hatSession = service.selectSafetyHat();
		for (Safety_hat safety_hat : safety_hatSession) {
			Construction_site oneConstruction_site = service.selectOneConstruction_site(safety_hat.getC_id());
			safety_hat.setBelong(oneConstruction_site.getC_name());
		}
		session.setAttribute("safety_hatSession", safety_hatSession);
		return "SafetyHat";
	}

	// 跳转增加安全帽页面
	@RequestMapping(value = "toaddsafetyhat")
	public String toaddsafetyhat(HttpSession session) {
		List<Construction_site> construction_siteSession = service.selectConstruction_site();
		session.setAttribute("construction_siteSession", construction_siteSession);
		return "Addsafetyhat";
	}

	// 添加安全帽数据toinsertSafetyHat
	@RequestMapping(value = "toinsertSafetyHat")
	public String toinsertSafetyHat(Safety_hat hat) {
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
		List<Construction_site> construction_siteSession = service.selectConstruction_site();
		session.setAttribute("construction_siteSession", construction_siteSession);
		Construction_site oneConstruction_site = service.selectOneConstruction_site(safety_hatSession.getC_id());
		session.setAttribute("oneConstruction_site", oneConstruction_site);
		return "EditSafetyHat";
	}

	// 修改安全帽设备数据
	@RequestMapping(value = "toupdateSafetyHat")
	public String toupdateSafetyHat(Safety_hat hat) {
		service.updateSafetyHat(hat);

		return "redirect:toSafetyHat";
	}

	// 跳转添加环境监控设备页面
	@RequestMapping(value = "toaddequipment")
	public String toaddequipment(HttpSession session) {
		List<Construction_site> construction_siteSession = service.selectConstruction_site();
		session.setAttribute("construction_siteSession", construction_siteSession);
		
		return "Addequipment";
	}

	// 添加监控设备
	@RequestMapping(value = "toinsertequipment")
	public String toinsertequipment(Equipment equipment) {
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
		List<Construction_site> construction_siteSession = service.selectConstruction_site();
		session.setAttribute("construction_siteSession", construction_siteSession);
		Construction_site oneConstruction_site = service.selectOneConstruction_site(oneEquipment.getC_id());
		session.setAttribute("oneConstruction_site", oneConstruction_site);
		return "Editequipment";
	}

	// 修改环境监控设备
	@RequestMapping(value = "toupdateequipment")
	public String toupdateequipment(Equipment equipment) {
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
	public String toupdateUser(User user) {
		service.updateUserInformation(user);
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
	public String toeditUser(User user) {
		service.updateUserInformation(user);
		return "redirect:toindex";
	}

	// 跳转添加用户toaddUser页面
	@RequestMapping(value = "toaddUser")
	public String toaddUser() {
		return "Adduser";

	}
	
	//toinsertUser添加用户
	@RequestMapping(value = "toinsertUser")
	public String toinsertUser(User user) {
		service.insertUser(user);
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
		for (Video_monitor video_monitor : videoListSession) {
			Construction_site oneConstruction_siteSession= service.selectOneConstruction_site(video_monitor.getC_id());
			video_monitor.setBelong(oneConstruction_siteSession.getC_name());
		}
		session.setAttribute("videoListSession", videoListSession);
		return "Video_monitor";
	}
	//跳转添加视频监控设备toaddVideo_monitor
	@RequestMapping(value = "toaddVideo_monitor")
	public String toaddVideo_monitor(HttpSession session) {
		List<Construction_site> construction_siteSession = service.selectConstruction_site();
		session.setAttribute("construction_siteSession", construction_siteSession);
		return "Addvideo_monitor";
	}
	//toinsertvideo_monitor添加视频监控设备
	@RequestMapping(value = "toinsertvideo_monitor")
	public String toinsertvideo_monitor(Video_monitor video_monitor,HttpSession session) {
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
		List<Construction_site> construction_siteSession = service.selectConstruction_site();
		session.setAttribute("construction_siteSession", construction_siteSession);
		Construction_site oneConstruction_siteSession= service.selectOneConstruction_site(Onevideo_monitorSession.getC_id());
		session.setAttribute("oneConstruction_siteSession", oneConstruction_siteSession);
		return "EditVideo_monitor";
	}
	
	//修改视频监控设备toupdatevideo_monitor
	@RequestMapping(value = "toupdatevideo_monitor")
	public String toupdateVideo_monitor(Video_monitor video_monitor) {
		service.updateVideo_monitor(video_monitor);
		return "redirect:tovideo_monitor";
	}
	
}