package com.warehouse.pro.service.good;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.warehouse.pro.mapper.good.GoodMapper;
import com.warehouse.pro.mapper.good.GoodMapperCustom;
import com.warehouse.pro.po.good.Good;
import com.warehouse.pro.po.good.GoodCustom;
import com.warehouse.pro.po.good.GoodExample;
import com.warehouse.pro.po.good.GoodExampleCustom;
import com.warehouse.pro.po.good.GoodVo;
import com.warehouse.pro.util.PageBean;

@Service("goodService")
public class GoodServiceImpl implements GoodService {

	@Autowired
	private GoodMapper goodMapper;
	@Autowired
	private GoodMapperCustom goodMapperCustom;
	
	@Override
	public int countByExample(GoodExample example) {
		// TODO Auto-generated method stub
		return goodMapper.countByExample(example);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return goodMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insertSelective(Good record) {
		// TODO Auto-generated method stub
		return goodMapper.insertSelective(record);
	}

	@Override
	public List<Good> selectByExample(GoodExample example) {
		// TODO Auto-generated method stub
		return goodMapper.selectByExample(example);
	}
	
	@Override
	public List<Good> selectByExamplezdygood(GoodExample example) {
		// TODO Auto-generated method stub
		return goodMapper.selectByExamplezdygood(example);
	}
	
	@Override
	public List<Good> selectByExampleQuq(GoodExample example) {
		// TODO Auto-generated method stub
		return goodMapper.selectByExampleQuq(example);
	}

	@Override
	public Good selectByGood(Good record) {
		// TODO Auto-generated method stub
		return goodMapper.selectByGood(record);
	}
	
	@Override
	public Good selectByPrimaryKey(Integer goodid) {
		// TODO Auto-generated method stub
		return goodMapper.selectByPrimaryKey(goodid);
	}

	@Override
	public PageBean findListByPage(GoodVo goodVo) {
		// TODO Auto-generated method stub
		GoodExampleCustom exampleCustom = new GoodExampleCustom();
		GoodExampleCustom.Criteria criteria = exampleCustom.createCriteria();
		Good good = goodVo.getGood();
		 if(good!=null)
		 {
			 if(good.getWarning() != null )
				 criteria.andWarningEqualTo(good.getWarning());
			 if(good.getGoodname() != null && good.getGoodname() != ""){
				 criteria.andGoodnameLike("%" + good.getGoodname() + "%");
			 }
			 if(good.getUnit() != null && good.getUnit() != ""){
				 criteria.andUnitLike("%" + good.getUnit() + "%");
			 }
		 }
		 //假删除条件（0未删除，1删除）
		 criteria.andSpare1EqualTo("0");
		 PageBean pageBean = new PageBean();
		 Integer totalRows=goodMapperCustom.findCount(exampleCustom);
		 pageBean.setTotalRows(totalRows);
		 Integer pageSize = pageBean.getPageSize();
		 Integer totalPages= pageBean.getTotalPages();
		 Integer currentPage= goodVo.getCurrentPage();
		 pageBean.setCurrentPage(currentPage);
		 Integer beginRow= pageBean.getStartPos();
		 exampleCustom.setBeginRow(beginRow);
		 exampleCustom.setPageSize(pageSize);
		 exampleCustom.setOrderByClause("stock < warning");
		 
		List<GoodCustom> list = goodMapperCustom.findListByPage(exampleCustom);
		pageBean.setList(list);
		pageBean.setTotalPages(totalPages);
		return pageBean;
	}

	@Override
	public void update(Good good) {
		// TODO Auto-generated method stub
		goodMapper.updateByPrimaryKey(good);
	}


}
