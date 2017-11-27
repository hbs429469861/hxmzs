package com.lockbur.book.gateway.service;


import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.domain.Admin;


import java.util.List;

/**
 * Service接口 - 管理员
 *
 * @date 2016-10-22 下午05:11:49
 */

public interface AdminService {
    /**
     * 根据用户名判断此用户是否存在（不区分大小写）
     */
   // public boolean isExistByUsername(String username);

    /**
     * 根据用户名获取管理员对象，若管理员不存在，则返回null（不区分大小写）
     */
   // public Admin getAdminByUsername(String username);

    /**
     * 根据ID查找权限
     *
     * @param id ID
     * @return 权限, 若不存在则返回null
     */
    //public List<String> findAuthorities(Long id);

    int add2Admin(Admin admin);

    List<Admin> getAdminList(Page1 page);

    Admin findByIdAdmin(long id);

    int deleteById(long id);

   /* int updataByAdminId(Admin admin);*/

    Admin selectByNamePwd(String username);
}