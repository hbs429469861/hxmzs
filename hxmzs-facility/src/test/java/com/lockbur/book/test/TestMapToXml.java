package com.lockbur.book.test;

import com.lockbur.book.common.utils.MapToXMLString;
import com.lockbur.book.common.utils.StringUtils;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.*;

/**
 * Created by Administrator on 2017/3/30.
 */
public class TestMapToXml {
    private static final Logger logger = LoggerFactory.getLogger(TestMapToXml.class);



    @Test
    public void buildBaseForTransferBatch()  {
        TreeMap<String, String> dataMap = new TreeMap<String, String>();
        String[] digestValues= new String[]{"cmd","mer_Id","batch_No","total_Num","total_Amt","is_Repay","hmacKey"};
        /**
         * 必填(需要hmac签名的)
         */
        dataMap.put("cmd","TransferBatch");
        dataMap.put("group_Id","1111111");
        dataMap.put("mer_Id", "201611111");
        dataMap.put("batch_No", StringUtils.formatString("201511030000001")); //payForAnotherModel.getBatchNo()
        dataMap.put("total_Num", StringUtils.formatString("1"));  //payForAnotherModel.getTotalNum()
        dataMap.put("total_Amt", StringUtils.formatString("0.01"));
        dataMap.put("is_Repay", StringUtils.formatString("0"));
        dataMap.put("hmac", "aaaaaaaaaabbbbbbbbbbbbb");

     /*   TreeMap<String, String> dataMapListItem = new TreeMap<String, String>();


        dataMapListItem.put("order_Id", "20151103000000102");  //payForAnotherModel.getOrderId();
        dataMapListItem.put("bank_Code", StringUtils.formatString("ICBC"));
        dataMapListItem.put("cnaps", null);
        dataMapListItem.put("bank_Name", StringUtils.formatString("工商银行"));
        dataMapListItem.put("branch_Bank_Name", StringUtils.formatString("工商银行北京市朝阳支行"));  //payForAnotherModel.getOrderId();
        dataMapListItem.put("amount", StringUtils.formatString("0.01"));
        dataMapListItem.put("account_Name", StringUtils.formatString("李四"));
        dataMapListItem.put("account_Number", StringUtils.formatString("9558820200001234568"));  //payForAnotherModel.getAccountNumber()
        dataMapListItem.put("province", StringUtils.formatString("110000"));  //payForAnotherModel.getOrderId();
        dataMapListItem.put("city", StringUtils.formatString("110000"));
        dataMapListItem.put("fee_Type", StringUtils.formatString("SOURCE"));
        dataMapListItem.put("payee_Email", null);
        dataMapListItem.put("payee_Mobile", null);  //payForAnotherModel.getOrderId();
        dataMapListItem.put("urgency", StringUtils.formatString("0"));
        dataMapListItem.put("leave_Word", null);
        dataMapListItem.put("abstractInfo", null);
        dataMapListItem.put("remarksInfo", null);*/


        List<TreeMap> list = new ArrayList();
        for (int i = 0; i <2 ; i++) {
            TreeMap<String, String> dataMapListItem = new TreeMap<String, String>();
                dataMapListItem.put("order_Id", "20151103000000102");  //payForAnotherModel.getOrderId();
                dataMapListItem.put("bank_Code", StringUtils.formatString("ICBC"));
                dataMapListItem.put("cnaps", null);
                dataMapListItem.put("bank_Name", StringUtils.formatString("工商银行"));
                dataMapListItem.put("branch_Bank_Name", StringUtils.formatString("工商银行北京市朝阳支行"));  //payForAnotherModel.getOrderId();
                dataMapListItem.put("amount", StringUtils.formatString("0.01"));
                dataMapListItem.put("account_Name", StringUtils.formatString("李四"));
                dataMapListItem.put("account_Number", StringUtils.formatString("9558820200001234568"));  //payForAnotherModel.getAccountNumber()
                dataMapListItem.put("province", StringUtils.formatString("110000"));  //payForAnotherModel.getOrderId();
                dataMapListItem.put("city", StringUtils.formatString("110000"));
                dataMapListItem.put("fee_Type", StringUtils.formatString("SOURCE"));
                dataMapListItem.put("payee_Email", null);
                dataMapListItem.put("payee_Mobile", null);  //payForAnotherModel.getOrderId();
                dataMapListItem.put("urgency", StringUtils.formatString("0"));
                dataMapListItem.put("leave_Word", null);
                dataMapListItem.put("abstractInfo", null);
                dataMapListItem.put("remarksInfo", null);

            list.add(dataMapListItem);

        }

        /**
         * 把每个Item进行封装
         */
        String XmlOrJsonItem = "";

        for (int i = 0; i <list.size() ; i++) {
            XmlOrJsonItem = MapToXMLString.converterCutHeadForXmlItem(list.get(i),"item");
            XmlOrJsonItem+=XmlOrJsonItem;
        }

        /*XmlOrJsonItem1 = MapToXMLString.converterCutHeadForXmlItem(dataMapListItem,"item");*/
        //logger.info("============向易宝发送代发代付封装后的数据========ItemXml======="+XmlOrJsonItem);
        /**
         * 把装了Item的list进行封装
         */
        String XmlOrJsonList = "";
        XmlOrJsonList = MapToXMLString.converterCutHeadForXmlList(XmlOrJsonItem,"list");

        logger.info("============向易宝发送代发代付封装后的list数据========ListXml======="+XmlOrJsonList);
        /*//**
         * 把list进行最终xml封装
         *//*
        String XmlOrJson = "";
        XmlOrJson=MapToXMLString.converter(dataMap,XmlOrJsonList,"data");

        logger.info("============向易宝发送代发代付封装后的数据========xml======="+XmlOrJson);

            */

    }


}
