package com.lockbur.book.gateway.service;

import com.lockbur.book.gateway.model.Role;

import java.util.List;

/**
 * Created by Administrator on 2016/10/24.
 */
public interface RoleService {

    public List<String> findAuthority(List<Long> roleIds);

    /**
     * 查询用户的角色
     *
     * @param id
     * @return
     */
    public List<Role> findRolesByAdmin(long id);


    /**
     * 查询用户对应的角色ID
     *
     * @param id
     * @return
     */
    public List<Long> findRoleIdsByAdmin(long id);
}
