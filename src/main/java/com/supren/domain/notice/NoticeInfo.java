package com.supren.domain.notice;

import java.util.Date;

public class NoticeInfo {
    private String id;

    private String annContent;

    private Date intstTime;

    private String annTitle;

    private String delFlag;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getAnnContent() {
        return annContent;
    }

    public void setAnnContent(String annContent) {
        this.annContent = annContent == null ? null : annContent.trim();
    }

    public Date getIntstTime() {
        return intstTime;
    }

    public void setIntstTime(Date intstTime) {
        this.intstTime = intstTime;
    }

    public String getAnnTitle() {
        return annTitle;
    }

    public void setAnnTitle(String annTitle) {
        this.annTitle = annTitle == null ? null : annTitle.trim();
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag == null ? null : delFlag.trim();
    }
}