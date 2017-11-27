package com.lockbur.book.service.impl;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.dao.MasterDao;
import com.lockbur.book.domain.MasterEntity;
import com.lockbur.book.gateway.service.MasterService;
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
public class MasterServiceImpl implements MasterService{

    private final Logger logger = LoggerFactory.getLogger(MasterServiceImpl.class);

    @Resource
    private MasterDao masterDao;


    @Override
    public int add2Master(MasterEntity masterEntity) {
        return masterDao.add2Master(masterEntity);
    }

    @Override
    public int getTotalCount() {
        return masterDao.getTotalCount();
    }

    @Override
    public List getMasterEntityList(Page1 page) {
        int tc=masterDao.getTotalCount();
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

        List masterEntityList = masterDao.getMasterEntityList(firstResult, maxResult);
        logger.info("{}####",masterEntityList);
        if (masterEntityList == null) {
            masterEntityList = new ArrayList();
        }
        return masterEntityList;
    }

    @Override
    public MasterEntity findByIdMasterEntity(long id) {
        return this.masterDao.findByIdMasterEntity(id);
    }

    @Override
    public int deleteById(long id) {
        return this.masterDao.deleteById(id);
    }

    @Override
    public int updateByMasterEntityId(MasterEntity masterEntity) {
        return this.masterDao.updateByMasterEntityId(masterEntity);
    }

    @Override
    public List<MasterEntity> showMasterList() {
        List masterLists =this.masterDao.showMasterList();
        if (masterLists == null) {
            masterLists = new ArrayList();
        }
        return masterLists;
    }

    @Override
    public int selectByCondition(String masterName, String masterEmail) {
        return this.masterDao.selectByCondition(masterName,masterEmail);
    }
}
