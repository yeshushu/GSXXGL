package com.supren.dao.notice;

import java.util.List;

import org.springframework.stereotype.Component;

import com.supren.domain.notice.NoticeInfo;

@Component
public interface NoticeInfoMapper {
	
	NoticeInfo get(String id);
	
	NoticeInfo findList(NoticeInfo record);
	
	List<NoticeInfo> findAllList();
	
	int insert(NoticeInfo record);
	
	int update(NoticeInfo userInfo);
	
    int delete(String id);
}