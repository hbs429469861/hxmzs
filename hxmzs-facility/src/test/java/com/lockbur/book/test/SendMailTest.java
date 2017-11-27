package com.lockbur.book.test;

import com.lockbur.book.domain.MasterEntity;
import com.lockbur.book.gateway.service.EmailService;
import net.sf.json.JSONArray;
import org.apache.commons.collections.map.HashedMap;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by wangkun23 on 2017/2/10.
 */
public class SendMailTest extends TestBase {
    private static final Logger LOGGER = LoggerFactory.getLogger(SendMailTest.class);

    @Resource
    private EmailService emailService;


    @Test
    public void sendEmail() throws Exception {
        Map map = new HashedMap();
        map.put("user","hbs");
        emailService.send("429469861@qq.com", "测试邮件发送", "user_register_mail.vm", map);
        LOGGER.info("########## {}");
    }



    @Test
    public void test2(){
        MasterEntity masterEntity = new MasterEntity();
        masterEntity.setMasterName("111");
        masterEntity.setStatus("8");

        MasterEntity masterEntity2 = new MasterEntity();
        masterEntity2.setMasterName("222");
        masterEntity2.setStatus("8");

        List list=new ArrayList();
        list.add(masterEntity);
        list.add(masterEntity2);

        String ss = "[{\"bankCode\":\"ABC\",\"bankName\":\"农业银行\",\"dayLimit\":50000000,\"monthLimit\":0,\"singleLimit\":20000000},{\"bankCode\":\"BCCB\",\"bankName\":\"北京银行\",\"dayLimit\":50000000,\"monthLimit\":0,\"singleLimit\":5000000},{\"bankCode\":\"BOC\",\"bankName\":\"中国银行\",\"dayLimit\":50000000,\"monthLimit\":0,\"singleLimit\":5000000},{\"bankCode\":\"BOCOM\",\"bankName\":\"交通银行\",\"dayLimit\":50000000,\"monthLimit\":0,\"singleLimit\":20000000},{\"bankCode\":\"CCB\",\"bankName\":\"中国建设银行\",\"dayLimit\":50000000,\"monthLimit\":0,\"singleLimit\":20000000},{\"bankCode\":\"CEB\",\"bankName\":\"光大银行\",\"dayLimit\":50000000,\"monthLimit\":0,\"singleLimit\":50000000},{\"bankCode\":\"CIB\",\"bankName\":\"兴业银行\",\"dayLimit\":5000000,\"monthLimit\":0,\"singleLimit\":3999900},{\"bankCode\":\"CMB\",\"bankName\":\"招商银行\",\"dayLimit\":25000000,\"monthLimit\":100000000,\"singleLimit\":5000000},{\"bankCode\":\"CMBC\",\"bankName\":\"中国民生银行\",\"dayLimit\":10000000000,\"monthLimit\":0,\"singleLimit\":2000000000},{\"bankCode\":\"CNCB\",\"bankName\":\"中信银行\",\"dayLimit\":1000000,\"monthLimit\":2000000,\"singleLimit\":1000000},{\"bankCode\":\"GDB\",\"bankName\":\"广发银行\",\"dayLimit\":-1,\"monthLimit\":-1,\"singleLimit\":-1},{\"bankCode\":\"HXB\",\"bankName\":\"华夏银行\",\"dayLimit\":1000000000,\"monthLimit\":0,\"singleLimit\":10000000},{\"bankCode\":\"ICBC\",\"bankName\":\"中国工商银行\",\"dayLimit\":-1,\"monthLimit\":-1,\"singleLimit\":-1},{\"bankCode\":\"PAB\",\"bankName\":\"平安银行\",\"dayLimit\":500000000,\"monthLimit\":0,\"singleLimit\":50000000},{\"bankCode\":\"PSBC\",\"bankName\":\"邮政储蓄银行\",\"dayLimit\":500000,\"monthLimit\":0,\"singleLimit\":500000},{\"bankCode\":\"SPDB\",\"bankName\":\"浦发银行\",\"dayLimit\":100000000,\"monthLimit\":0,\"singleLimit\":13000000}]";
        JSONArray array= JSONArray.fromObject(ss);
        System.out.println(array);

    }

}
