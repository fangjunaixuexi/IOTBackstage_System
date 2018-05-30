package com.dajingzhu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dajingzhu.service.IOTservice;

@Controller
@RequestMapping(value="/user")
public class UserController {

	@Autowired
	private IOTservice service;
	
	@RequestMapping(value="tologin")
	public String tologin(){
		return "login";
	}
	
	@RequestMapping(value="toindex")
	public String toindex(){
		return "index";
	}
	
	
	@RequestMapping(value="totab-panel")
	public String totabpanel(){
		return "tab-panel";
	}
	
	@RequestMapping(value="totable")
	public String totable(){
		return "table";
	}
	
}
