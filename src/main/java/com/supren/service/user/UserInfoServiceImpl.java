package com.supren.service.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.supren.dao.user.UserInfoMapper;
import com.supren.domain.user.UserInfo;

@Service
public class UserInfoServiceImpl implements UserInfoService{

	@Autowired
	private UserInfoMapper userInfoDao;
	
	@Override
	public UserInfo get(String id) {
		
		UserInfo userInfo = userInfoDao.get(id);
			return userInfo;	
	}

	@Override
	public UserInfo findList(UserInfo record){
		UserInfo userInfo = userInfoDao.findList(record);
		return userInfo;
	}

	@Override
	public List<UserInfo> findAllList() {
		List<UserInfo> list = new ArrayList<UserInfo>();
		
		list = userInfoDao.findAllList();
		return list;
	}

	@Override
	public int insert(UserInfo record) {
		int temp = 0;
		temp = userInfoDao.insert(record);
		return temp;
	}

	@Override
	public int update(UserInfo userInfo) {
		int temp = 0;
		temp = userInfoDao.update(userInfo);
		return temp;
	}

	@Override
	public int delete(String id) {
		int temp = 0;
		temp = userInfoDao.delete(id);
		return temp;
	}

}
