package com.warehouse.pro.service.good;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.warehouse.pro.mapper.good.InDepodMapper;
import com.warehouse.pro.mapper.good.InDepodMapperCustom;
import com.warehouse.pro.po.good.InDepod;
import com.warehouse.pro.po.good.InDepodCustom;
import com.warehouse.pro.po.good.InDepodExampleCustom;
import com.warehouse.pro.po.good.InDepodVo;
import com.warehouse.pro.util.DateUtil;
import com.warehouse.pro.util.PageBean;

@Service("inDepodService")
public class InDepodServiceImpl implements InDepodService {
	@Autowired
	private InDepodMapper inDepodMapper;
	@Autowired
	private InDepodMapperCustom inDepodMapperCustom;

	@Override
	public int insertSelective(InDepod record) {
		// TODO Auto-generated method stub
		return inDepodMapper.insertSelective(record);
	}

	@Override
	public PageBean findListByPage(String beginDate,String endDate,String goodname,InDepodVo indepodVo) {
		InDepodExampleCustom exampleCustom = new InDepodExampleCustom();
		InDepodExampleCustom.Criteria criteria = exampleCustom.createCriteria();
		if(beginDate!=null&&beginDate.length()>0){
			criteria.andIndepodtimeGreaterThan(DateUtil.String2Date(beginDate));
		}
		if(endDate!=null&&endDate.length()>0){
			criteria.andIndepodtimeLessThan(DateUtil.String2Date(endDate));
		}
		if(goodname!=null&&goodname.length()>0){
			criteria.andGoodnameLike("%" + goodname + "%");
		}

		 PageBean pageBean = new PageBean();
		 Integer totalRows=inDepodMapperCustom.findCount(exampleCustom);
		 pageBean.setTotalRows(totalRows);
		 Integer pageSize = pageBean.getPageSize();
		 Integer totalPages= pageBean.getTotalPages();
		 Integer currentPage= indepodVo.getCurrentPage();
		 pageBean.setCurrentPage(currentPage);
		 Integer beginRow= pageBean.getStartPos();
		 exampleCustom.setBeginRow(beginRow);
		 exampleCustom.setPageSize(pageSize);
		 exampleCustom.setOrderByClause("indepodtime desc");
		List<InDepodCustom> list =inDepodMapperCustom.findListByPage(exampleCustom);
		pageBean.setList(list);
		pageBean.setTotalPages(totalPages);
		return pageBean;
	}

}
