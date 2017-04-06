package com.supren.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.supren.dao.UserMapper;
import com.supren.domain.User;
import com.supren.domain.UserExample;
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userDao;
	
	@Override
	public int countByExample(UserExample example) {
		// TODO Auto-generated method stub
		
		return userDao.countByExample(example);
	}

	@Override
	public int deleteByExample(UserExample example) {
		// TODO Auto-generated method stub
		return userDao.deleteByExample(example);
	}

	@Override
	public int deleteByPrimaryKey(String uid) {
		// TODO Auto-generated method stub
		return userDao.deleteByPrimaryKey(uid);
	}

	@Override
	public int insert(User record) {
		// TODO Auto-generated method stub
		return userDao.insert(record);
	}

	@Override
	public int insertSelective(User record) {
		// TODO Auto-generated method stub
		return userDao.insertSelective(record);
	}

	@Override
	public List<User> selectByExample(UserExample example) {
		// TODO Auto-generated method stub
		return userDao.selectByExample(example);
	}

	@Override
	public User selectByPrimaryKey(String uid) {
		// TODO Auto-generated method stub
		return userDao.selectByPrimaryKey(uid);
	}

	@Override
	public int updateByExampleSelective(User record, UserExample example) {
		// TODO Auto-generated method stub
		return userDao.updateByExample(record, example);
	}

	@Override
	public int updateByExample(User record, UserExample example) {
		// TODO Auto-generated method stub
		return userDao.updateByExample(record, example);
	}

	@Override
	public int updateByPrimaryKeySelective(User record) {
		// TODO Auto-generated method stub
		return userDao.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(User record) {
		// TODO Auto-generated method stub
		return userDao.updateByPrimaryKey(record);
	}

	@Override
	public User selectByname(String username) {
		// TODO Auto-generated method stub
		return userDao.selectByname(username); 
	}

}
