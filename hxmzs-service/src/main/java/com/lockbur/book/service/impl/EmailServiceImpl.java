package com.lockbur.book.service.impl;

import com.lockbur.book.gateway.service.EmailService;
import org.apache.velocity.app.VelocityEngine;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.ui.velocity.VelocityEngineUtils;
import org.springframework.util.Assert;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import java.io.UnsupportedEncodingException;
import java.util.Map;

@Service
public class EmailServiceImpl implements EmailService {

    final Logger LOGGER = LoggerFactory.getLogger(EmailServiceImpl.class);

    @Resource
    private JavaMailSenderImpl mailSender;

    @Resource
    private VelocityEngine velocityEngine;


    public void send(String toMail, String subject, String templateName, Map<String, Object> data)
            throws MessagingException, UnsupportedEncodingException {

        Assert.hasText(toMail);
        Assert.hasText(subject);
        Assert.hasText(templateName);

        String text = VelocityEngineUtils.mergeTemplateIntoString(velocityEngine, templateName, "UTF-8", data);

        MimeMessage mailMessage = mailSender.createMimeMessage();
        MimeMessageHelper messageHelper = new MimeMessageHelper(mailMessage, false, "utf-8");

        messageHelper.setFrom(MimeUtility.encodeWord("系统邮件") + " <hubisong@hbsong.cn>");
        messageHelper.setTo(toMail);
        messageHelper.setSubject(subject);
        messageHelper.setText(text, true);

        mailSender.send(mailMessage);
    }


    public void send(String smtpFromMail, String smtpHost, Integer smtpPort, String smtpUsername, String smtpPassword, String toMail, String subject, String templateName, Map<String, Object> data) {

        Assert.hasText(smtpFromMail);
        Assert.hasText(smtpHost);
        Assert.notNull(smtpPort);
        Assert.hasText(smtpUsername);
        Assert.hasText(smtpPassword);
        Assert.hasText(toMail);
        Assert.hasText(subject);
        Assert.hasText(templateName);

        //读取邮件模板
        String text = VelocityEngineUtils.mergeTemplateIntoString(velocityEngine, templateName, "UTF-8", data);

        mailSender.setHost(smtpHost);
        mailSender.setPort(smtpPort);
        mailSender.setUsername(smtpUsername);
        mailSender.setPassword(smtpPassword);
        try {
            MimeMessage mailMessage = mailSender.createMimeMessage();
            MimeMessageHelper messageHelper = new MimeMessageHelper(mailMessage, false, "utf-8");

            messageHelper.setFrom(MimeUtility.encodeWord("系统邮件") + " <hubisong@hbsong.cn>");
            messageHelper.setTo(toMail);
            messageHelper.setSubject(subject);
            messageHelper.setText(text, true);

            mailSender.send(mailMessage);
        } catch (MessagingException | UnsupportedEncodingException ex) {
            LOGGER.error("send email error {}", ex);
        }
    }

}
