package com.warehouse.pro.controller.warehouse;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.warehouse.pro.po.base.Employee;
import com.warehouse.pro.po.good.Good;
import com.warehouse.pro.po.good.GoodExampleCustom;
import com.warehouse.pro.po.good.GoodVo;
import com.warehouse.pro.po.good.InDepod;
import com.warehouse.pro.po.good.InDepodVo;
import com.warehouse.pro.po.good.OutDepod;
import com.warehouse.pro.po.good.OutDepodVo;
import com.warehouse.pro.service.good.GoodService;
import com.warehouse.pro.service.good.InDepodService;
import com.warehouse.pro.service.good.OutDepodService;
import com.warehouse.pro.util.PageBean;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

@Controller
@RequestMapping(value = "/good")
public class GoodController {

	@Autowired
	private GoodService goodservice;
	@Autowired
	private InDepodService inDepodservice;
	@Autowired
	private OutDepodService outDepodservice;

	@RequestMapping(value = "/list")
	public ModelAndView list(ModelAndView mv, GoodVo goodVo) {
		PageBean pageBean = goodservice.findListByPage(goodVo);
		mv.addObject("goodVo", goodVo);
		mv.addObject("pageBean", pageBean);
		mv.setViewName("good/list");
		return mv;
	}

	@RequestMapping(value = "/indepodList")
	public ModelAndView indepodList(ModelAndView mv, String beginDate, String endDate, String goodname,
			InDepodVo indepod) {
		PageBean pageBean = inDepodservice.findListByPage(beginDate, endDate, goodname, indepod);
		if (beginDate != null && beginDate.length() > 0) {
			mv.addObject("beginDate", beginDate);
		}
		if (endDate != null && endDate.length() > 0) {
			mv.addObject("endDate", endDate);
		}
		if (goodname != null && goodname.length() > 0) {
			mv.addObject("goodname", goodname);
		}
		mv.addObject("pageBean", pageBean);
		mv.setViewName("good/indepodlist");
		return mv;
	}

	@RequestMapping(value = "/outdepodList")
	public ModelAndView outdepodList(ModelAndView mv, String beginDate, String endDate, String goodname,
			OutDepodVo outdepodVo) {
		PageBean pageBean = outDepodservice.findListByPage(beginDate, endDate, goodname, outdepodVo);
		if (beginDate != null && beginDate.length() > 0) {
			mv.addObject("beginDate", beginDate);
		}
		if (endDate != null && endDate.length() > 0) {
			mv.addObject("endDate", endDate);
		}
		if (goodname != null && goodname.length() > 0) {
			mv.addObject("goodname", goodname);
		}
		mv.addObject("pageBean", pageBean);
		mv.setViewName("good/outdepodlist");
		return mv;
	}

	@RequestMapping(value = "/addpage")
	public ModelAndView addpage(ModelAndView mv) {
		mv.setViewName("good/addpage");
		return mv;
	}

	@RequestMapping(value = "/delpage")
	public ModelAndView delpage(ModelAndView mv) {
		mv.setViewName("good/delpage");
		return mv;
	}

	@RequestMapping(value = "/add")
	public ModelAndView add(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			ModelAndView mv, InDepod inDepod) {
		// 判断用户是否登录
		Employee user = (Employee) session.getAttribute("user");
		if (user == null) {
			mv.setViewName("redirect:/user/loginPage.action");
			return mv;
		}
		// 获取页面传递的json数组
		String json = request.getParameter("textjosn");
		json = json.trim();// 去除空格
		JSONArray jsonArr = JSONArray.fromObject(json);
		// 入库商品列表list
		List<Good> list = JSONArray.toList(jsonArr, new Good(), new JsonConfig());
		inDepod.setIndepodtime(new java.util.Date(System.currentTimeMillis()));
		// 将当前用户设为仓库负责人
		inDepod.setDepodprincipal(user.getRealname());
		for (Good good : list) {
			System.out.println("本次添加的商品：" + good.toString());
			Good g = goodservice.selectByGood(good);
			if (g != null) {
				// 修改原库存
				int stock = g.getStock() + good.getStock();
				System.out.println("stock" + stock);
				g.setStock(stock);
				g.setPrice(good.getPrice());
				g.setWarning(good.getWarning());
				goodservice.update(g);
				// 添加到入库记录
				inDepod.setGoodid(g.getGoodid());
				inDepod = this.getInDepod(inDepod, good);
				inDepodservice.insertSelective(inDepod);
				System.out.println("修改原库存成功-----------");
			} else {
				// 添加新物品
				good.setSpare1("0");
				goodservice.insertSelective(good);
				g = goodservice.selectByGood(good);
				// 添加到入库记录
				inDepod.setGoodid(g.getGoodid());
				inDepod = this.getInDepod(inDepod, good);
				inDepodservice.insertSelective(inDepod);
				System.out.println("添加新物品成功-----------");
			}
			System.out.println("完成一次商品添加---------");
		}
		mv.setViewName("redirect:list.action");
		return mv;
	}

	public InDepod getInDepod(InDepod indepod, Good good) {
		indepod.setNum(good.getStock());
		indepod.setUnit(good.getUnit());
		return indepod;
	}

	@RequestMapping(value = "/outdepod")
	public ModelAndView outDepod(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			ModelAndView mv, OutDepod outDepod) {
		System.out.println("goog out depod");
		// 判断用户是否登录
		Employee user = (Employee) session.getAttribute("user");
		if (user == null) {
			mv.setViewName("redirect:/user/loginPage.action");
			return mv;
		}
		// 获取页面传递的json数组
		String json = request.getParameter("textjosn");
		json = json.trim();// 去除空格
		JSONArray jsonArr = JSONArray.fromObject(json);
		// 入库商品列表list
		List<Good> list = JSONArray.toList(jsonArr, new Good(), new JsonConfig());
		System.out.println(list.size());
		outDepod.setOutdepodtime(new java.util.Date(System.currentTimeMillis()));
		// 将当前用户设为仓库负责人
		outDepod.setDepodprincipal(user.getRealname());
		for (Good good : list) {
			System.out.println("本次出库的商品：" + good.toString());
			Good g = goodservice.selectByGood(good);
			if (g != null) {
				// 修改原库存
				int stock = g.getStock() - good.getStock();
				System.out.println("stock" + stock);
				g.setStock(stock);
				goodservice.update(g);
				// 添加到入库记录
				outDepod.setGoodid(g.getGoodid());
				outDepod = this.getOutDepod(outDepod, good);
				outDepodservice.insertSelective(outDepod);
				System.out.println("完成一种商品出库---------");
			}
		}
		mv.setViewName("redirect:list.action");
		return mv;
	}

	public OutDepod getOutDepod(OutDepod outdepod, Good good) {
		outdepod.setNum(good.getStock());
		outdepod.setUnit(good.getUnit());
		return outdepod;
	}

	@RequestMapping(value = "/delete")
	public String delete(ModelAndView mv, Integer goodId) {
		goodservice.deleteByPrimaryKey(goodId);
		return "redirect:list.action";
	}

	@RequestMapping(value = "/updatepage")
	public ModelAndView updatepage(ModelAndView mv, Integer goodId) {
		Good good = goodservice.selectByPrimaryKey(goodId);
		System.out.println(goodId + good.toString());
		mv.addObject("good", good);
		mv.setViewName("good/updatepage");
		return mv;
	}

	@RequestMapping(value = "/deletelist")
	public String deletelist(ModelAndView mv, Integer[] ids) {
		for (Integer id : ids) {
			goodservice.deleteByPrimaryKey(id);
		}
		return "redirect:list.action";
	}

	@RequestMapping(value = "/update")
	public String update(ModelAndView mv, Good good) throws Exception {
		System.out.println(good);
		good.setSpare1("1");
		goodservice.update(good);
		return "redirect:list.action";
	}

	@RequestMapping(value = "getList")
	@ResponseBody
	public List<Good> getlist(String type) {
		GoodExampleCustom example = new GoodExampleCustom();
		GoodExampleCustom.Criteria criteria = example.createCriteria();
		if(type != null && !"".equals(type)){
			criteria.andSpare2EqualTo(type);
		}
		criteria.andSpare1EqualTo("0");
		List<Good> list = goodservice.selectByExamplezdygood(example);
		System.out.println(list.size());
		return list;
	}

	@RequestMapping(value = "getStock")
	@ResponseBody
	public Integer getStock(String goodname, String goodmodel, String goodproducer) {
		System.out.println(goodname + goodmodel + goodproducer);
		GoodExampleCustom example = new GoodExampleCustom();
		GoodExampleCustom.Criteria criteria = example.createCriteria();
		criteria.andSpare1EqualTo("0");
		criteria.andGoodnameEqualTo(goodname);
		criteria.andGoodmodelEqualTo(goodmodel);
		criteria.andGoodproducerEqualTo(goodproducer);
		List<Good> list = goodservice.selectByExample(example);
		return list.get(0).getStock();
	}
	
	@RequestMapping(value = "getGoodListHX")
	@ResponseBody
	public Good getGoodListHX(String goodname, String goodmodel) {
		System.out.println(goodname + goodmodel);
		GoodExampleCustom example = new GoodExampleCustom();
		GoodExampleCustom.Criteria criteria = example.createCriteria();
		criteria.andSpare1EqualTo("0");
		criteria.andGoodnameEqualTo(goodname);
		criteria.andGoodmodelEqualTo(goodmodel);
		List<Good> list = goodservice.selectByExample(example);
		if(list.size() == 0){
			list.add(new Good());
		}
		return list.get(0);
	}

	@RequestMapping(value = "getGoodList")
	@ResponseBody
	public List<Good> getGoodList(String goodname, String models) {
		//System.out.println(goodname);
		GoodExampleCustom example = new GoodExampleCustom();
		GoodExampleCustom.Criteria criteria = example.createCriteria();
		criteria.andSpare1EqualTo("0");
		criteria.andGoodnameEqualTo(goodname);
		if(models != null && models.length()>0){
			List<String> values = new ArrayList<>();
			String[] mos = models.split(",");
			for (String string : mos) {
				values.add(string);
			}
			criteria.andGoodmodelNotIn(values);
		}
		List<Good> list = goodservice.selectByExample(example);
		return list;
	}
	@RequestMapping(value = "getListByType")
	@ResponseBody
	public List<Good> getlistByType(String type) {
		GoodExampleCustom example = new GoodExampleCustom();
		GoodExampleCustom.Criteria criteria = example.createCriteria();
		criteria.andSpare3EqualTo(type);
		List<Good> list = goodservice.selectByExample(example);
		return list;
	}
}
