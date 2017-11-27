package com.lockbur.book.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2016/10/24.
 */
public class AuthorityEntity implements Serializable {

    private long id;
    private long roleId;//角色关联
    private String authority;//角色权限 如 ROLE_ADMIN
    private long creatorId;//创建人
    private Date createdTime;
    private Date modifiedTime;


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getRoleId() {
        return roleId;
    }

    public void setRoleId(long roleId) {
        this.roleId = roleId;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    public Date getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Date createdTime) {
        this.createdTime = createdTime;
    }

    public Date getModifiedTime() {
        return modifiedTime;
    }

    public void setModifiedTime(Date modifiedTime) {
        this.modifiedTime = modifiedTime;
    }

    public long getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(long creatorId) {
        this.creatorId = creatorId;
    }
}
