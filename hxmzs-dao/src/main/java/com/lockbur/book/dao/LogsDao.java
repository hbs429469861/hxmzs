package com.lockbur.book.dao;

import com.lockbur.book.domain.LogsEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Logsistrator on 2017/4/4.
 */
public interface LogsDao {

    int add2Logs(LogsEntity logsEntity);

    int getTotalCount();

    List getLogsEntityList(@Param("start") int start, @Param("step") int step);

    LogsEntity findByIdLogsEntity(@Param("id") long id);

    int deleteById(@Param("id") long id);

    int updateByLogsEntityId(LogsEntity logsEntity);
}
