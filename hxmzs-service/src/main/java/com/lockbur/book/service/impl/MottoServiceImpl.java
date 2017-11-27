package com.lockbur.book.service.impl;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.dao.AdminDao;
import com.lockbur.book.dao.MottoDao;
import com.lockbur.book.domain.MottoEntity;
import com.lockbur.book.gateway.service.MottoService;
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
public class MottoServiceImpl implements MottoService{

    private final Logger logger = LoggerFactory.getLogger(MottoServiceImpl.class);

    @Resource
    private MottoDao mottoDao;


    @Override
    public int add2Motto(MottoEntity mottoEntity) {
        return mottoDao.add2Motto(mottoEntity);
    }

    @Override
    public int getTotalCount() {
        return mottoDao.getTotalCount();
    }

    @Override
    public List getMottoEntityList(Page1 page) {
        int tc=mottoDao.getTotalCount();
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

        List mottoEntityList = mottoDao.getMottoEntityList(firstResult, maxResult);
        logger.info("{}####",mottoEntityList);
        if (mottoEntityList == null) {
            mottoEntityList = new ArrayList();
        }
        return mottoEntityList;
    }

    @Override
    public MottoEntity findByIdMottoEntity(long id) {
        return this.mottoDao.findByIdMottoEntity(id);
    }

    @Override
    public int deleteById(long id) {
        return this.mottoDao.deleteById(id);
    }

    @Override
    public int updateByMottoEntityId(MottoEntity mottoEntity) {
        return this.mottoDao.updateByMottoEntityId(mottoEntity);
    }

    @Override
    public List<MottoEntity> showMottoList() {
        List mottoLists =this.mottoDao.showMottoList();
        if (mottoLists == null) {
            mottoLists = new ArrayList();
        }
        return mottoLists;
    }
}
