package com.lockbur.book.gateway.service;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.domain.LogsEntity;

import java.util.List;

/**
 * Created by Administrator on 2017/4/4.
 */
public interface LogsService {

    int add2Logs(LogsEntity logsEntity);

    int getTotalCount();

    List getLogsEntityList(Page1 page);

    LogsEntity findByIdLogsEntity(long id);

    int deleteById(long id);

    int updateByLogsEntityId(LogsEntity logsEntity);
}
