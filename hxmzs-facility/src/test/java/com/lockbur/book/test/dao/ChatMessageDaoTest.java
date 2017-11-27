package com.lockbur.book.test.dao;


import com.lockbur.book.dao.ChatMessageDao;
import com.lockbur.book.domain.ChatMessageEntity;
import com.lockbur.book.test.TestBase;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;

/**
 * 聊天DAO测试
 * Created by wangkun23 on 2016/7/13.
 */
public class ChatMessageDaoTest extends TestBase {
    private static final Logger LOGGER = LoggerFactory.getLogger(ChatMessageDaoTest.class);

    @Resource
    private ChatMessageDao chatMessageDao;

    //@Test
    public void insert() {

        ChatMessageEntity message=new ChatMessageEntity();

        message.setRank("2");
        message.setUid("admin");
        message.setText("ChatMessageEntity");
        message.setRoomId("7383");
        chatMessageDao.insert(message);
        LOGGER.info("##########");
    }

}
