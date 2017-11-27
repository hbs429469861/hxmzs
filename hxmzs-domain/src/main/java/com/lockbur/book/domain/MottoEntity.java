package com.lockbur.book.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2017/4/3.
 */
public class MottoEntity implements Serializable {


    private Long id;

    private String mottoTitle;
    private String mottoDesc;
    private String mottoAuthor;


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

    public String getMottoAuthor() {
        return mottoAuthor;
    }

    public void setMottoAuthor(String mottoAuthor) {
        this.mottoAuthor = mottoAuthor;
    }

    public String getMottoTitle() {
        return mottoTitle;
    }

    public void setMottoTitle(String mottoTitle) {
        this.mottoTitle = mottoTitle;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getMottoDesc() {
        return mottoDesc;
    }

    public void setMottoDesc(String mottoDesc) {
        this.mottoDesc = mottoDesc;
    }
}
