package com.supren.service.department;

import java.util.List;

import com.supren.domain.department.DepartmentInfo;

public interface DepInfoService {
	DepartmentInfo get(String id);
	
	DepartmentInfo findList(DepartmentInfo record);
	
	List<DepartmentInfo> findAllList();
	
	int insert(DepartmentInfo record);
	
	int update(DepartmentInfo userInfo);
	
    int delete(String id);
}
