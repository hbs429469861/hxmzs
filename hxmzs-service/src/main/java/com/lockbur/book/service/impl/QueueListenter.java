package com.lockbur.book.service.impl;

import org.springframework.amqp.core.Message;
import org.springframework.amqp.core.MessageListener;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2017/4/14.
 */
@Service
public class QueueListenter implements MessageListener {

    @Override
    public void onMessage(Message msg) {
        try{
            System.out.print(new String(msg.getBody())+"ssssssaaaaaaaaaasssssss");
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
