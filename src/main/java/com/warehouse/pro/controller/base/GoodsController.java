package com.warehouse.pro.controller.base;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.warehouse.pro.po.base.Goods;
import com.warehouse.pro.po.base.GoodsExample;
import com.warehouse.pro.po.base.GoodsExample.Criteria;
import com.warehouse.pro.service.base.GoodsService;
import com.warehouse.pro.util.PageBean;

@Controller
@RequestMapping("goods")
public class GoodsController {
	@Autowired
	private GoodsService goodsSrevice;
	@RequestMapping(value="list")
	public ModelAndView list(ModelAndView mv,String key,Integer page){
		PageBean paging=new PageBean();
		if(page!=null&&page>0){
			paging.setCurrentPage(page);
		}
		goodsSrevice.selectByPage(paging, key);
		mv.addObject("page", paging);
		mv.setViewName("base/goods/list");
		return mv;
		
	}
	@RequestMapping(value="sendAdd")
	public ModelAndView sendAdd(ModelAndView mv){
		mv.setViewName("base/goods/add");
		return mv;
		
	}
	@RequestMapping(value="add")
	public ModelAndView add(ModelAndView mv,Goods goods){
		goods.setIsdelete(0);
		int flg=goodsSrevice.insert(goods);
		
		if(flg>0){
			mv.setViewName("redirect://goods/list.action");
		}else{
			mv.addObject("message", "添加失败！");
			mv.setViewName("base/goods/add");
		}
		return mv;
		
	}
	@RequestMapping(value="sendUpdate")
	public ModelAndView sendUpdate(ModelAndView mv,Integer goodsid){
		mv.addObject("goods", goodsSrevice.selectById(goodsid));
		mv.setViewName("base/goods/update");
		return mv;
		
	}
	@RequestMapping(value="update")
	public ModelAndView update(ModelAndView mv,Goods goods){
		int flg=goodsSrevice.update(goods);
		if(flg>0){
			mv.setViewName("redirect://goods/list.action");
		}else{
			mv.addObject("message", "修改失败！");
			mv.setViewName("base/goods/update");
		}
		return mv;
		
	}
	@RequestMapping(value="delete")
	@ResponseBody
	public String delete(int goodsid){
		int flg=goodsSrevice.delete(goodsid);
		if(flg>0){
			return "success";
		}else{
			return "error";
		}
	}
	@RequestMapping(value="getList")
	@ResponseBody
	public List<Goods> getlist(){
		GoodsExample example=new GoodsExample();
		Criteria criteria=example.createCriteria();
		criteria.andIsdeleteEqualTo(0);
		List<Goods> list=goodsSrevice.selectByExample(example);
		return list;
	}
	
	
	@RequestMapping(value="getGoodById")
	@ResponseBody
	public Goods getGoodById(int id){
		Goods selectById = goodsSrevice.selectById(id);
		System.out.println("获取到的信息为："+selectById.getModel());
		return goodsSrevice.selectById(id);
	}
}
