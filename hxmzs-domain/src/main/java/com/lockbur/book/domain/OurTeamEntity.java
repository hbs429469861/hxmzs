package com.lockbur.book.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2017/4/4.
 */
public class OurTeamEntity implements Serializable {

    private Long id;

    private String teamTitle;
    private String teamContent;
    private String teamProfessional;
    private String teamImgUrl;

    private Date createDate;
    private Date updateDate;
    private String status;


    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getTeamContent() {
        return teamContent;
    }

    public void setTeamContent(String teamContent) {
        this.teamContent = teamContent;
    }

    public String getTeamImgUrl() {
        return teamImgUrl;
    }

    public void setTeamImgUrl(String teamImgUrl) {
        this.teamImgUrl = teamImgUrl;
    }

    public String getTeamProfessional() {
        return teamProfessional;
    }

    public void setTeamProfessional(String teamProfessional) {
        this.teamProfessional = teamProfessional;
    }

    public String getTeamTitle() {
        return teamTitle;
    }

    public void setTeamTitle(String teamTitle) {
        this.teamTitle = teamTitle;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}
