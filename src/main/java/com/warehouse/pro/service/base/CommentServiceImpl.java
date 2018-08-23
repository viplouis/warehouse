package com.warehouse.pro.service.base;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.warehouse.pro.mapper.base.CommentMapper;
import com.warehouse.pro.po.base.Comment;
import com.warehouse.pro.po.base.CommentExample;
@Service("commentService")
public class CommentServiceImpl implements CommentService{
 @Autowired
 private CommentMapper commentMapper;
	@Override
	public int countByExample(CommentExample example) {
		return commentMapper.countByExample(example);
	}

	@Override
	public int deleteByExample(CommentExample example) {
		return commentMapper.deleteByExample(example);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return commentMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Comment record) {
		return commentMapper.insert(record);
	}

	@Override
	public int insertSelective(Comment record) {
		return commentMapper.insertSelective(record);
	}

	@Override
	public List<Comment> selectByExample(CommentExample example) {
		return commentMapper.selectByExample(example);
	}

	@Override
	public Comment selectByPrimaryKey(Integer id) {
		return commentMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByExampleSelective(Comment record, CommentExample example) {
		return commentMapper.updateByExampleSelective(record, example);
	}

	@Override
	public int updateByExample(Comment record, CommentExample example) {
		return commentMapper.updateByExample(record, example);
	}

	@Override
	public int updateByPrimaryKeySelective(Comment record) {
		return commentMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Comment record) {
		return commentMapper.updateByPrimaryKey(record);
	}

}
