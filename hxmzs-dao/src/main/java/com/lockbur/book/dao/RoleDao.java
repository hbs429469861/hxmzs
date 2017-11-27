package com.lockbur.book.dao;

import com.lockbur.book.domain.RoleEntity;

import java.util.List;

/**
 * Created by Administrator on 2016/10/24.
 */
public interface RoleDao {

    /**
     * 保存
     *
     * @param entity
     */
    public void insert(RoleEntity entity);

    /**
     * 查询用户角色
     *
     * @param adminId
     * @return
     */
    public List<RoleEntity> findRolesByAdmin(long adminId);
}
