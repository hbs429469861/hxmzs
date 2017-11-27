package com.lockbur.book.dao;

import com.lockbur.book.domain.AuthorityEntity;

import java.util.List;

/**
 * Created by Administrator on 2016/10/24.
 */
public interface AuthorityDao {

    public void insert(AuthorityEntity entity);

    public List<String> findAuthorityByRole(List<Long> roleIds);
}
