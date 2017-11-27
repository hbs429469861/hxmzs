package com.lockbur.book.common.system;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import lombok.Getter;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * 系统功能是否开启特性
 *
 * @author youyou
 */
@NoArgsConstructor
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class Features implements Serializable {

    /**
     * 用户信息是否显示完整 实际情况是开发这模式需要开启此项 设置flase
     */
    @XmlElement
    @Getter
    private boolean dimPrivacy = true;  //默认值

    @Override
    public String toString() {
        return "Features{" +
                "dimPrivacy=" + dimPrivacy +
                '}';
    }
}
