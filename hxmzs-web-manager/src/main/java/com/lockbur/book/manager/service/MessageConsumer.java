package com.lockbur.book.manager.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.core.MessageListener;

/**
 * 功能概要：消费接收
 * 
 * @since  2016年1月15日
 */

public class MessageConsumer implements MessageListener {
	
	private Logger logger = LoggerFactory.getLogger(MessageConsumer.class);

	@Override
	public void onMessage(Message message) {
		logger.info("receive message:{}",message);
		try{
			System.out.println("message" + new String(message.getBody()));
		}catch (Exception e){
			e.printStackTrace();
		}

	}

}
