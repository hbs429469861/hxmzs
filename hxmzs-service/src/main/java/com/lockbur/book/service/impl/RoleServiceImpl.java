package com.lockbur.book.service.impl;

import com.lockbur.book.dao.AdminRoleDao;
import com.lockbur.book.dao.AuthorityDao;
import com.lockbur.book.dao.RoleDao;
import com.lockbur.book.domain.RoleEntity;
import com.lockbur.book.gateway.model.Role;
import com.lockbur.book.gateway.service.RoleService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/10/24.
 */
@Service
public class RoleServiceImpl implements RoleService {

    @Resource
    private AuthorityDao authorityDao;

    @Resource
    private RoleDao roleDao;

    @Resource
    private AdminRoleDao adminRoleDao;

    @Override
    public List<String> findAuthority(List<Long> roleIds) {
        List<String> result = authorityDao.findAuthorityByRole(roleIds);
        return result;
    }

    @Override
    public List<Role> findRolesByAdmin(long id) {
        List<RoleEntity> list = roleDao.findRolesByAdmin(id);

        List<Role> result = new ArrayList<>(list.size());
        for (RoleEntity entity : list) {
            Role role = new Role();
            BeanUtils.copyProperties(entity, role);
            result.add(role);
        }
        return result;
    }

    @Override
    public List<Long> findRoleIdsByAdmin(long id) {
        return adminRoleDao.findRoleIdsByAdmin(id);
    }
}
