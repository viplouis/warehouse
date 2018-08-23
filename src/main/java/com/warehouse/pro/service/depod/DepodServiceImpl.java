package com.warehouse.pro.service.depod;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.warehouse.pro.mapper.depod.DepodMapper;
import com.warehouse.pro.mapper.depod.DepodMapperCustom;
import com.warehouse.pro.po.depod.Depod;
import com.warehouse.pro.po.depod.DepodCustom;
import com.warehouse.pro.po.depod.DepodExample;
import com.warehouse.pro.po.depod.DepodExampleCustom;
import com.warehouse.pro.po.depod.DepodVo;
import com.warehouse.pro.util.PageBean;

@Service("depodService")
public class DepodServiceImpl implements DepodService {
	
	@Autowired
	private DepodMapper depodMapper;
	@Autowired
	private DepodMapperCustom depodMapperCustom;
	@Override
	public int countByExample(DepodExample example) {
		// TODO Auto-generated method stub
		return depodMapper.countByExample(example);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return depodMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insertSelective(Depod depod) {
		// TODO Auto-generated method stub
		depod.setCreatetime(new java.util.Date(System.currentTimeMillis()));
		return depodMapper.insertSelective(depod);
	}

	@Override
	public Depod selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return depodMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<Depod> selectByEXample(DepodExample example) {
		// TODO Auto-generated method stub
		return depodMapper.selectByExample(example);
	}

	@Override
	public PageBean findListByPage(DepodVo depodVo) {
		// TODO Auto-generated method stub
		DepodExampleCustom exampleCustom = new DepodExampleCustom();
		DepodExampleCustom.Criteria criteria = exampleCustom.createCriteria();
		Depod depod = depodVo.getDepod();
		 if(depod!=null)
		 {
			 if(depod.getDepodnum() != null && depod.getDepodnum() != "")
				 criteria.andDepodnumLike("%" + depod.getDepodnum() +"%");
			 if(depod.getDepodname() != null && depod.getDepodname() != "")
				 criteria.andDepodnameLike("%" + depod.getDepodname() +"%");
			 if(depod.getPrincipal() != null && depod.getPrincipal() != "")
				 criteria.andPrincipalLike("%" + depod.getPrincipal() + "%");
			 if(depod.getStorigetype() != null && depod.getStorigetype() != "")
				 criteria.andStorigetypeLike("%" + depod.getStorigetype() + "%");
		 }
		 //假删除条件（0未删除，1删除）
		 criteria.andSpare1EqualTo("0");

		 PageBean pageBean = new PageBean();
		 Integer totalRows=depodMapperCustom.findCount(exampleCustom);
		 pageBean.setTotalRows(totalRows);
		 Integer pageSize = pageBean.getPageSize();
		 Integer totalPages= pageBean.getTotalPages();
		 Integer currentPage= depodVo.getCurrentPage();
		 pageBean.setCurrentPage(currentPage);
		 Integer beginRow= pageBean.getStartPos();
		 exampleCustom.setBeginRow(beginRow);
		 exampleCustom.setPageSize(pageSize);
		 
		List<DepodCustom> list =depodMapperCustom.findListByPage(exampleCustom);
		pageBean.setList(list);
		pageBean.setTotalPages(totalPages);
		return pageBean;
	}

	@Override
	public void update(Integer depodId, DepodCustom depodCustom) {
		// TODO Auto-generated method stub
		System.out.println(depodCustom.getDepodname());
		depodMapper.updateByPrimaryKey(depodCustom);
	}

}
