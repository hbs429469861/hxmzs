package com.lockbur.book.service.impl;

import javax.annotation.Resource;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.dao.AdminDao;

import com.lockbur.book.domain.Admin;
import com.lockbur.book.gateway.service.AdminService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


/**
 * Service实现类 - 管理员
 *
 * @author Administrator
 */

@Service
public class AdminServiceImpl implements AdminService {

    private final Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private AdminDao adminDao;

  /*  @Resource
    private RedisCacheUtil<Object> redisCache;
*/
    @Override
    public int add2Admin(Admin admin) {
        return adminDao.add2Admin(admin);
    }

    @Override
    public List<com.lockbur.book.domain.Admin> getAdminList(Page1 page) {
        int tc=adminDao.getTotalCount();
        page.setRecordCount(tc);

        if (tc % page.getPageSize() == 0)
        {
            int totalPageCount=tc / page.getPageSize();
            page.setTotalPageCount(totalPageCount);
        }
        else
        {
            int totalPageCount = tc / page.getPageSize() + 1;
            page.setTotalPageCount(totalPageCount);
        }
        int firstResult = 0;
        int maxResult = 0;
        firstResult = (page.getCurrPageNo() - 1) * page.getPageSize();
        maxResult = page.getPageSize();
        List adminList = adminDao.getAdminList(firstResult, maxResult);
        System.out.println("####：   "+adminList);
        if (adminList == null) {
            adminList = new ArrayList();
        }
        return adminList;
    }

    @Override
    public Admin findByIdAdmin(long id) {
       Admin admin =  this.adminDao.findByIdAdmin(id);

        return admin;
    }

    @Override
    public int deleteById(long id) {
        return this.adminDao.deleteById(id);
    }

   /* @Override
    public int updataByAdminId(Admin admin) {
        redisCache.setCacheObject("aaa","aaaa",10);
        System.out.println(redisCache.getCacheObject("aaa")+"bbbbbbbbbbbbbb");
        return this.adminDao.updataByAdminId(admin);
    }*/

    @Override
    public Admin selectByNamePwd(String username) {
        return adminDao.selectByNamePwd(username);
    }


}