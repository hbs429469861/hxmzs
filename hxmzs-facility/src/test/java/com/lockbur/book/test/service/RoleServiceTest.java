package com.lockbur.book.test.service;

import com.lockbur.book.gateway.service.RoleService;
import com.lockbur.book.test.TestBase;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2016/10/24.
 */
public class RoleServiceTest extends TestBase {

    private static final Logger logger = LoggerFactory.getLogger(ConfigServiceTest.class);

    @Resource
    private RoleService roleService;

    //@Test
    public void get() {
       // List<String> list = roleService.findAuthority(1);
        //logger.info("roleService {}", list.size());
    }
}
