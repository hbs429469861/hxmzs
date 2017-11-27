package com.lockbur.book.test.dao;

import com.lockbur.book.dao.AdminDao;
import com.lockbur.book.domain.AdminEntity;
import com.lockbur.book.test.TestBase;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.DigestUtils;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2016/10/22.
 */
public class AdminDaoTest extends TestBase {

    private static final Logger LOGGER = LoggerFactory.getLogger(AdminDaoTest.class);

    @Resource
    private AdminDao adminDao;

    //@Test
    public void insert() {
        AdminEntity admin = new AdminEntity();

        admin.setUsername("admin");
        admin.setPassword(DigestUtils.md5DigestAsHex("123456".getBytes()));
        admin.setEmail("845885222@qq.com");

        admin.setAccountEnabled(true);
        admin.setAccountLocked(false);
        admin.setLoginFailureCount(0);
        admin.setAccountExpired(false);
        //admin.setLockedDate(null);
        //admin.setLoginDate(null);
        //admin.setLoginIp(null);

        /*adminDao.insert(admin);
        LOGGER.info("##########");*/
    }

    //@Test
  /*  public void getAdminByUsername() {
        AdminEntity admin = adminDao.getAdminByUsername("admin");
        LOGGER.info("##########,{}",admin.getPassword());
    }*/

}
