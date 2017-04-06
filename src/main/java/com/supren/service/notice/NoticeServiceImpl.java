package com.supren.service.notice;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.supren.dao.notice.NoticeInfoMapper;
import com.supren.domain.notice.NoticeInfo;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeInfoMapper noticeInfoDao;
	
	@Override
	public NoticeInfo get(String id) {
		
		NoticeInfo noticeInfo = noticeInfoDao.get(id);
			return noticeInfo;	
	}

	@Override
	public NoticeInfo findList(NoticeInfo record){
		NoticeInfo noticeInfo = noticeInfoDao.findList(record);
		return noticeInfo;
	}

	@Override
	public List<NoticeInfo> findAllList() {
		List<NoticeInfo> list = new ArrayList<NoticeInfo>();
		
		list = noticeInfoDao.findAllList();
		return list;
	}

	@Override
	public int insert(NoticeInfo record) {
		int temp = 0;
		temp = noticeInfoDao.insert(record);
		return temp;
	}

	@Override
	public int update(NoticeInfo noticeInfo) {
		int temp = 0;
		temp = noticeInfoDao.update(noticeInfo);
		return temp;
	}

	@Override
	public int delete(String id) {
		int temp = 0;
		temp = noticeInfoDao.delete(id);
		return temp;
	}
}
