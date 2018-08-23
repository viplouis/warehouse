package com.warehouse.pro.service.base;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.warehouse.pro.mapper.base.GoodsMapper;
import com.warehouse.pro.po.base.Goods;
import com.warehouse.pro.po.base.GoodsExample;
import com.warehouse.pro.po.base.GoodsExample.Criteria;
import com.warehouse.pro.util.PageBean;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	private GoodsMapper goodsMapper;
	@Override
	public List<Goods> selectByExample(GoodsExample example) {
		// TODO Auto-generated method stub
		return goodsMapper.selectByExample(example);
	}
	@Override
	public void selectByPage(PageBean paging, String key) {
		// TODO Auto-generated method stub
		GoodsExample example=new GoodsExample();
		Criteria criteria=example.createCriteria();
		criteria.andIsdeleteNotEqualTo(1);
		if(key!=null){
			criteria.andGoodsnameLike("%"+key+"%");
		}
		paging.setTotalRows(goodsMapper.countByExample(example));
		paging.setList(goodsMapper.selectByPage(paging.getStartPos(),paging.getPageSize(),key));
	}
	@Override
	public int insert(Goods goods) {
		// TODO Auto-generated method stub
		return goodsMapper.insertSelective(goods);
	}
	@Override
	public int update(Goods goods) {
		// TODO Auto-generated method stub
		return goodsMapper.updateByPrimaryKeySelective(goods);
	}
	@Override
	public int delete(int goodsid) {
		// TODO Auto-generated method stub
		return goodsMapper.deleteByPrimaryKey(goodsid);
	}
	@Override
	public Goods selectById(int goodsid) {
		// TODO Auto-generated method stub
		return goodsMapper.selectByPrimaryKey(goodsid);
	}
	
	
}
