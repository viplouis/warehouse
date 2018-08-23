package com.warehouse.pro.service.oil;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.warehouse.pro.mapper.oil.OilMapper;
import com.warehouse.pro.mapper.oil.OilMapperCustom;
import com.warehouse.pro.po.oil.Oil;
import com.warehouse.pro.po.oil.OilCustom;
import com.warehouse.pro.po.oil.OilExample;
import com.warehouse.pro.po.oil.OilExampleCustom;
import com.warehouse.pro.po.oil.OilVo;
import com.warehouse.pro.util.DateUtil;
import com.warehouse.pro.util.PageBean;




@Service("oilService")
public class OilServiceImpl implements OilService {

	@Autowired
	private OilMapper oilMapper;
	@Autowired
	private OilMapperCustom oilMapperCustom;
/*	@Override
	public List<OilVo> selectVoByEXample(OilExample example) {
		// TODO Auto-generated method stub
		return OilMapper.selectVoByEXample(example);
	}*/
	@Override
	public int countByExample(OilExample example) {
		// TODO Auto-generated method stub
		return oilMapper.countByExample(example);
	}
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return oilMapper.deleteByPrimaryKey(id);
	}
	@Override
	public int insertSelective(Oil record) {
		// TODO Auto-generated method stub
		return oilMapper.insertSelective(record);
	}
	@Override
	public OilCustom selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		 OilCustom oilCustom = new OilCustom();
		 Oil oil = oilMapper.selectByPrimaryKey(id);
		  BeanUtils.copyProperties(oil, oilCustom);
		  
		  return oilCustom;
	}
	@Override
	public List<Oil> selectByEXample(OilExample example) {
		return oilMapper.selectByExample(example);
		
	}
	
	public void update(Integer id, OilCustom oilCustom) throws Exception {
		//添加业务校验，通常在service接口对关键参数进行校验
		//校验 id是否为空，如果为空抛出异常
		
		//更新商品信息使用updateByPrimaryKeyWithBLOBs根据id更新items表中所有字段，包括 大文本类型字段
		//updateByPrimaryKeyWithBLOBs要求必须转入id
		oilCustom.setOilId(id);
		oilMapper.updateByPrimaryKey(oilCustom);
	

}
	@Override
	public PageBean findListByPage(OilVo oilVo){

		OilExampleCustom exampleCustom = new OilExampleCustom();
		 OilExampleCustom.Criteria criteria = exampleCustom.createCriteria();
		 
		 
		Oil oil = oilVo.getOil();
		 if(oil!=null)
		 {
		if(oil.getOilCard()!=null&&oil.getOilCard()!="")
		 criteria.andOilCardLike("%"+oil.getOilCard()+"%");
		if(oil.getOilAddress()!=null&&oil.getOilAddress()!="")
		 criteria.andOilAddressLike("%"+oil.getOilAddress()+"%");
		if(oil.getOilLicence()!=null&&oil.getOilLicence()!="")
		 criteria.andOilLicenceLike("%"+oil.getOilLicence()+"%");
		if(oil.getOilUser()!=null&&oil.getOilUser()!="")
			 criteria.andOilUserLike("%"+oil.getOilUser()+"%");
		 }
		if(oilVo.getBeginTime()!=null&&oilVo.getBeginTime()!="")
			 criteria.andTimeGreaterThan(DateUtil.String2Date(oilVo.getBeginTime()));
		if(oilVo.getEndTime()!=null&&oilVo.getEndTime()!="")
			criteria.andTimeLessThan(DateUtil.String2Date(oilVo.getEndTime()));
		
		 
		PageBean pageBean = new PageBean();
		 Integer totalRows=oilMapperCustom.findCount(exampleCustom);
		 pageBean.setTotalRows(totalRows);
		 Integer pageSize = pageBean.getPageSize();
		 Integer totalPages= pageBean.getTotalPages();
		 Integer currentPage= oilVo.getCurrentPage();
		 pageBean.setCurrentPage(currentPage);
		 Integer beginRow= pageBean.getStartPos();

		 exampleCustom.setBeginRow(beginRow);
		 exampleCustom.setPageSize(pageSize);

		List<OilCustom> list =oilMapperCustom.findListByPage(exampleCustom);
		
		pageBean.setList(list);
		pageBean.setTotalPages(totalPages);
		return pageBean;
	}
	}
