package com.supren.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.supren.domain.User;
import com.supren.domain.UserExample;

public interface UserService{
	
	User selectByname(String username);
	
	int countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(String uid);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    User selectByPrimaryKey(String uid);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}
