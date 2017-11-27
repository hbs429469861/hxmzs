package com.lockbur.book.test.service;

import com.lockbur.book.common.system.SystemConfig;
import com.lockbur.book.gateway.service.ConfigService;
import com.lockbur.book.test.TestBase;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2016/10/21.
 */
public class ConfigServiceTest extends TestBase {

    private static final Logger logger = LoggerFactory.getLogger(ConfigServiceTest.class);

    @Resource
    private ConfigService configService;

    @Test
    public void get() {
        String config = configService.get();
        logger.info("config {}", config);
    }

    @Test
    public void getSystemConfig() {
        SystemConfig config = configService.getSystemConfig();
        logger.info("config ###");
        logger.info("config {}", config);
    }

}
