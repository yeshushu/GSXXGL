package com.supren.service.notice;

import java.util.List;

import com.supren.domain.notice.NoticeInfo;
import com.supren.domain.user.UserInfo;

public interface NoticeService {

	NoticeInfo get(String id);
	
	NoticeInfo findList(NoticeInfo record);
	
	List<NoticeInfo> findAllList();
	
	int insert(NoticeInfo record);
	
	int update(NoticeInfo noticeInfo);
	
    int delete(String id);
}
