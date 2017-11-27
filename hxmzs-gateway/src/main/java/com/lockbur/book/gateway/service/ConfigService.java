package com.lockbur.book.gateway.service;


import com.lockbur.book.common.system.SystemConfig;

/**
 *
 * @author Administrator
 */
public interface ConfigService {

    public String get();

    public SystemConfig getSystemConfig();
}
