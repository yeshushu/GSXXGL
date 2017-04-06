package com.supren.dao.department;

import java.util.List;

import org.springframework.stereotype.Component;

import com.supren.domain.department.DepartmentInfo;

@Component
public interface DepartmentInfoMapper {
	DepartmentInfo get(String id);
	
	DepartmentInfo findList(DepartmentInfo record);
	
	List<DepartmentInfo> findAllList();
	
	int insert(DepartmentInfo record);
	
	int update(DepartmentInfo userInfo);
	
    int delete(String id);
}