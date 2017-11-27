package com.lockbur.book.service.impl;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.dao.LogsDao;
import com.lockbur.book.domain.LogsEntity;
import com.lockbur.book.gateway.service.LogsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/4/4.
 */
@Service
public class LogsServiceImpl implements LogsService{

    private final Logger logger = LoggerFactory.getLogger(LogsServiceImpl.class);

    @Resource
    private LogsDao logsDao;


    @Override
    public int add2Logs(LogsEntity logsEntity) {
        return logsDao.add2Logs(logsEntity);
    }

    @Override
    public int getTotalCount() {
        return logsDao.getTotalCount();
    }

    @Override
    public List getLogsEntityList(Page1 page) {
        int tc=logsDao.getTotalCount();
        page.setRecordCount(tc);

        if (tc % page.getPageSize() == 0)
        {
            int totalPageCount=tc / page.getPageSize();
            page.setTotalPageCount(totalPageCount);
        }
        else
        {
            int totalPageCount = tc / page.getPageSize() + 1;
            page.setTotalPageCount(totalPageCount);
        }
        int firstResult = 0;
        int maxResult = 0;
        firstResult = (page.getCurrPageNo() - 1) * page.getPageSize();
        maxResult = page.getPageSize();

        List logsEntityList = logsDao.getLogsEntityList(firstResult, maxResult);
        logger.info("{}####",logsEntityList);
        if (logsEntityList == null) {
            logsEntityList = new ArrayList();
        }
        return logsEntityList;
    }

    @Override
    public LogsEntity findByIdLogsEntity(long id) {
        return this.logsDao.findByIdLogsEntity(id);
    }

    @Override
    public int deleteById(long id) {
        return this.logsDao.deleteById(id);
    }

    @Override
    public int updateByLogsEntityId(LogsEntity logsEntity) {
        return this.logsDao.updateByLogsEntityId(logsEntity);
    }
}
