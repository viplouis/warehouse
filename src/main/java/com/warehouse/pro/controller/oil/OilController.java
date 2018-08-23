package com.warehouse.pro.controller.oil;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.warehouse.pro.po.oil.OilCustom;
import com.warehouse.pro.po.oil.OilVo;
import com.warehouse.pro.service.oil.OilService;
import com.warehouse.pro.util.PageBean;

@Controller
@RequestMapping(value="/oil")
public class OilController {
	@Autowired
	private OilService oilService;
	@RequestMapping(value="/list")
	public ModelAndView list(ModelAndView mv,OilVo oilVo) {
		
		//查询所有

		PageBean  pageBean = oilService.findListByPage(oilVo);
		
		mv.addObject("pageBean", pageBean);
		mv.addObject("oilVo", oilVo);
		mv.setViewName("oil/list");
		return mv;		
	}
	
	@RequestMapping(value="/addpage")
public ModelAndView addpage(ModelAndView mv){

		mv.setViewName("oil/addpage");
		return mv;		
}
	
	@RequestMapping(value="/add")
public String add(ModelAndView mv,OilVo oilVo){
		
		oilService.insertSelective(oilVo.getOilCustom());
		return "forward:list.action";		
}
	
	@RequestMapping(value="/delete")
	@ResponseBody
	public String deleteRepair(String ids) {
		String[] idarray = ids.split(",");
		int rows = 0;
		for (String id : idarray) {
			int Applyid = Integer.parseInt(id);
			int row=oilService.deleteByPrimaryKey(Applyid);
			rows+=row;
		}
		if (rows > 0) {
			return "success";
		} else {
			return "error";
		}
	}
	
	@RequestMapping(value="/updatepage")
public ModelAndView updatepage(ModelAndView mv,Integer oilId){
		
		OilCustom oilCustom = oilService.selectByPrimaryKey(oilId);
		
		mv.addObject("oilCustom", oilCustom);
		mv.setViewName("oil/updatepage");
		return mv;				
}
	@RequestMapping(value="/update")
public String update(ModelAndView mv,Integer oilId,OilCustom oilCustom) throws Exception{
		
		oilService.update(oilId, oilCustom);
		
		
		return "redirect:list.action";				
}
}
