package com.lockbur.book.dao;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.domain.Admin;
import com.lockbur.book.domain.AdminEntity;

import org.apache.ibatis.annotations.Param;


import java.util.List;

/**
 * Created by Administrator on 2016/10/22.
 */
public interface AdminDao {

    int add2Admin(Admin admin);

    int getTotalCount();

    List getAdminList(@Param("start") int start, @Param("step") int step);

    Admin findByIdAdmin(@Param("id") long id);

    int deleteById(@Param("id") long id);

    int updataByAdminId(Admin admin);

    Admin selectByNamePwd(@Param("username")String username);
}
