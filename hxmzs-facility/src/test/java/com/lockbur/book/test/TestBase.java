package com.lockbur.book.test;


import com.lockbur.book.domain.MasterEntity;
import net.sf.json.JSONArray;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by wangkun23 on 2016/7/13.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-config.xml")
public abstract class TestBase {

    @Test
    public void empty(){

    }


   /* try {
        List<BankLimitModel> returnList = new ArrayList<BankLimitModel>();
        List<BankLimitModel> list=null;
        if(param==null){
            List<BankLimitModel> bankLimitModels = redisCacheUtil.getCacheList("allDataList");
            if(bankLimitModels==null && bankLimitModels.equals("")){
                list = interfaceBankLimitService.interfaceBankLimitList2(param);
                redisCacheUtil.setCacheObject("allDataList", list,300);
            }

        }else{
            list = interfaceBankLimitService.interfaceBankLimitList2(param);
        }


}*/



}
