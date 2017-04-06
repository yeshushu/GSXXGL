package com.supren.dao.user;

import java.util.List;

import com.supren.domain.user.UserInfo;

public interface UserInfoMapper {

	UserInfo get(String id);
	
	UserInfo findList(UserInfo record);
	
	List<UserInfo> findAllList();
	
	int insert(UserInfo record);
	
	int update(UserInfo userInfo);
	
    int delete(String id);

}