package com.lockbur.book.gateway.service;

import javax.mail.MessagingException;
import java.io.UnsupportedEncodingException;
import java.util.Map;

/**
 * Created by wangkun23 on 2017/2/10.
 */
public interface EmailService {

    /**
     * @param toMail
     * @param subject
     * @param templateName
     * @param data
     * @throws MessagingException
     * @throws UnsupportedEncodingException
     */
    public void send(String toMail, String subject, String templateName, Map<String, Object> data)
            throws MessagingException, UnsupportedEncodingException;

    /**
     * @param smtpFromMail
     * @param smtpHost
     * @param smtpPort
     * @param smtpUsername
     * @param smtpPassword
     * @param toMail
     * @param subject
     * @param templateName
     * @param data
     */
    public void send(String smtpFromMail, String smtpHost, Integer smtpPort, String smtpUsername,
                     String smtpPassword, String toMail, String subject, String templateName,
                     Map<String, Object> data);
}
