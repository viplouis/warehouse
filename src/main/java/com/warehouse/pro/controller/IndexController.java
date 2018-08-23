package com.warehouse.pro.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.warehouse.pro.po.base.Employee;
import com.warehouse.pro.po.power.MFunctioncontrol;
import com.warehouse.pro.po.power.MFunctioncontrolExample;
import com.warehouse.pro.po.power.MSysFuncsecurity;
import com.warehouse.pro.po.power.MSysFuncsecurityExample;
import com.warehouse.pro.po.power.MSysFuncsecurityExample.Criteria;
import com.warehouse.pro.service.power.FunctionControlService;
import com.warehouse.pro.service.power.SysFunctionService;

@Controller
public class IndexController {
	@Autowired
	private SysFunctionService sysFunctionService;
	@Autowired
	private FunctionControlService functionControlService;
	@RequestMapping(value="index")
	public ModelAndView showIndex(ModelAndView mv,HttpSession session){
		Employee user=(Employee) session.getAttribute("user");
		if(user==null){
			mv.setViewName("redirect:/loginPage.action");
		}
		List<String> fidlist=new ArrayList<String>();
		if(user!=null&&user.getGroupid()!=null) {
			MSysFuncsecurityExample funcrexample=new MSysFuncsecurityExample();
			Criteria funcCriteria=funcrexample.createCriteria();
			funcCriteria.andMisUseridEqualTo(new Integer(user.getGroupid()));
			funcCriteria.andLockEqualTo(0);
			List<MSysFuncsecurity> sflist= sysFunctionService.selectByExample(funcrexample);
			if(sflist!=null) {
				for (MSysFuncsecurity mSysFuncsecurity : sflist) {
					fidlist.add(mSysFuncsecurity.getFunctionId());
				}
			}
		}else {
			mv.setViewName("login");
			return mv;
		}
		MFunctioncontrolExample example1 =new  MFunctioncontrolExample();
		com.warehouse.pro.po.power.MFunctioncontrolExample.Criteria criteria1=example1.createCriteria();
		criteria1.andIdIn(fidlist);
		criteria1.andActivateEqualTo(1);
		criteria1.andPidEqualTo("0");
		example1.setOrderByClause("pxid");
		List<MFunctioncontrol> parentlist=functionControlService.selectByExample(example1);
		MFunctioncontrolExample example =new  MFunctioncontrolExample();
		com.warehouse.pro.po.power.MFunctioncontrolExample.Criteria criteria=example.createCriteria();
		criteria.andIdIn(fidlist);
		criteria.andActivateEqualTo(1);
		example.setOrderByClause("pxid");
		List<MFunctioncontrol> funclist=functionControlService.selectByExample(example);
		mv.addObject("parentlist", parentlist);
		mv.addObject("funclist", funclist);
		mv.setViewName("index");
		return mv;
	}
	@RequestMapping(value="loginPage")
	public ModelAndView loginPage(ModelAndView mv){
		mv.setViewName("login");		
		return mv;
	}

	@RequestMapping(value="mainPage")
	public ModelAndView mainPage(ModelAndView mv){
//		mv.setViewName("main");	
		mv.setViewName("redirect:/good/list.action");
		return mv;
	}
	@RequestMapping(value="defaultPage")
	public ModelAndView defaultPage(ModelAndView mv){
		mv.addObject("message", "此功能暂未实现，请先使用其他功能");
		mv.setViewName("default");		
		return mv;
	}
}
