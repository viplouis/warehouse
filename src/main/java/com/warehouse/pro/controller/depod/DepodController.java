package com.warehouse.pro.controller.depod;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.warehouse.pro.po.depod.Depod;
import com.warehouse.pro.po.depod.DepodCustom;
import com.warehouse.pro.po.depod.DepodExampleCustom;
import com.warehouse.pro.po.depod.DepodVo;
import com.warehouse.pro.service.depod.DepodService;
import com.warehouse.pro.util.PageBean;

@Controller
@RequestMapping(value="/depod")
public class DepodController {
	
	@Autowired
	private DepodService depodservice;
	
	@RequestMapping(value="/list")
	public ModelAndView list(ModelAndView mv,DepodVo depodVo){
		PageBean  pageBean = depodservice.findListByPage(depodVo);
		mv.addObject("depodVo", depodVo);
		mv.addObject("pageBean", pageBean);
		mv.setViewName("depod/list");
		return mv;		
	}
	
	@RequestMapping(value="/addpage")
	public ModelAndView addpage(ModelAndView mv){
		mv.setViewName("depod/addpage");
		return mv;		
	}
	
	@RequestMapping(value="/add")
	public String add(ModelAndView mv,DepodVo depodVo){
		depodservice.insertSelective(depodVo.getDepodCustom());
		return "redirect:list.action";		
	}
	
	@RequestMapping(value="/delete")
	public String delete(ModelAndView mv,Integer depodId){
		depodservice.deleteByPrimaryKey(depodId);
		return "redirect:list.action";		
	}
	
	
	@RequestMapping(value="/updatepage")
	public ModelAndView updatepage(ModelAndView mv,Integer depodId){
		Depod depod = depodservice.selectByPrimaryKey(depodId);
		mv.addObject("depod", depod);
		mv.setViewName("depod/updatepage");
		return mv;				
	}
	
	@RequestMapping(value="/deletelist")
	public String deletelist(ModelAndView mv,Integer[] ids){
		for(Integer id:ids)
		{
			depodservice.deleteByPrimaryKey(id);
		}
		return "redirect:list.action";		
	}

	@RequestMapping(value="/update")
	public String update(ModelAndView mv,Integer depodId,DepodCustom depodCustom) throws Exception{
		depodservice.update(depodId, depodCustom);
		return "redirect:list.action";				
	}
	
	@RequestMapping(value="getList")
	@ResponseBody
	public List<Depod> getlist(){
		DepodExampleCustom example=new DepodExampleCustom();
		DepodExampleCustom.Criteria criteria=example.createCriteria();
		criteria.andSpare1EqualTo("0");
		List<Depod> list=depodservice.selectByEXample(example);
		return list;
	}
}
