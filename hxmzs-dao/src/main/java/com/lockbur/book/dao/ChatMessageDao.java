package com.lockbur.book.dao;

import com.lockbur.book.domain.ChatMessageEntity;

/**
 * 聊天消息存储DAO
 * Created by wangkun23 on 2016/7/22.
 */
public interface ChatMessageDao {

    public void insert(ChatMessageEntity message);
}
