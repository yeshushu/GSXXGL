package com.supren.service.department;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.supren.dao.department.DepartmentInfoMapper;
import com.supren.domain.department.DepartmentInfo;

@Service
public class DepInfoServiceImpl implements DepInfoService{

	@Autowired
	private DepartmentInfoMapper depInfoDao;
	
	@Override
	public DepartmentInfo get(String id) {
		
		DepartmentInfo departmentInfo = depInfoDao.get(id);
		return departmentInfo;	
	}

	@Override
	public DepartmentInfo findList(DepartmentInfo record){
		DepartmentInfo departmentInfo = depInfoDao.findList(record);
		return departmentInfo;
	}

	@Override
	public List<DepartmentInfo> findAllList() {
		List<DepartmentInfo> list = new ArrayList<DepartmentInfo>();
		
		list = depInfoDao.findAllList();
		return list;
	}

	@Override
	public int insert(DepartmentInfo record) {
		int temp = 0;
		temp = depInfoDao.insert(record);
		return temp;
	}

	@Override
	public int update(DepartmentInfo departmentInfo) {
		int temp = 0;
		temp = depInfoDao.update(departmentInfo);
		return temp;
	}

	@Override
	public int delete(String id) {
		int temp = 0;
		temp = depInfoDao.delete(id);
		return temp;
	}

}
