package com.warehouse.pro.service.good;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.warehouse.pro.mapper.good.OutDepodMapper;
import com.warehouse.pro.mapper.good.OutDepodMapperCustom;
import com.warehouse.pro.po.good.OutDepod;
import com.warehouse.pro.po.good.OutDepodCustom;
import com.warehouse.pro.po.good.OutDepodExampleCustom;
import com.warehouse.pro.po.good.OutDepodVo;
import com.warehouse.pro.util.DateUtil;
import com.warehouse.pro.util.PageBean;

@Service("outDepodService")
public class OutDepodServiceImpl implements OutDepodService {
	@Autowired
	private OutDepodMapper outDepodMapper;
	@Autowired
	private OutDepodMapperCustom outDepodMapperCustom;

	@Override
	public int insertSelective(OutDepod record) {
		// TODO Auto-generated method stub
		return outDepodMapper.insertSelective(record);
	}

	@Override
	public PageBean findListByPage(String beginDate,String endDate,String goodname,OutDepodVo outdepodVo) {
		// TODO Auto-generated method stub
		OutDepodExampleCustom exampleCustom = new OutDepodExampleCustom();
		OutDepodExampleCustom.Criteria criteria = exampleCustom.createCriteria();
		if(beginDate!=null&&beginDate.length()>0){
			criteria.andOutdepodtimeGreaterThan(DateUtil.String2Date(beginDate));
		}
		if(endDate!=null&&endDate.length()>0){
			criteria.andOutdepodtimeLessThan(DateUtil.String2Date(endDate));
		}
		if(goodname!=null&&goodname.length()>0){
			criteria.andGoodnameLike("%" + goodname + "%");
		}
		 PageBean pageBean = new PageBean();
		 Integer totalRows=outDepodMapperCustom.findCount(exampleCustom);
		 pageBean.setTotalRows(totalRows);
		 Integer pageSize = pageBean.getPageSize();
		 Integer totalPages= pageBean.getTotalPages();
		 Integer currentPage= outdepodVo.getCurrentPage();
		 pageBean.setCurrentPage(currentPage);
		 Integer beginRow= pageBean.getStartPos();
		 exampleCustom.setBeginRow(beginRow);
		 exampleCustom.setPageSize(pageSize);
		 exampleCustom.setOrderByClause("outdepodtime desc");
		List<OutDepodCustom> list =outDepodMapperCustom.findListByPage(exampleCustom);
		pageBean.setList(list);
		pageBean.setTotalPages(totalPages);
		return pageBean;
	}

}
