package com.lockbur.book.service.impl;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.dao.ServiceProjectDao;
import com.lockbur.book.domain.ServiceProjectEntity;
import com.lockbur.book.gateway.service.ServiceProjectService;
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
public class ServiceProjectServiceImpl implements ServiceProjectService{

    private final Logger logger = LoggerFactory.getLogger(ServiceProjectServiceImpl.class);

    @Resource
    private ServiceProjectDao serviceProjectDao;


    @Override
    public int add2ServiceProject(ServiceProjectEntity serviceProjectEntity) {
        return serviceProjectDao.add2ServiceProject(serviceProjectEntity);
    }

    @Override
    public int getTotalCount() {
        return serviceProjectDao.getTotalCount();
    }

    @Override
    public List getServiceProjectEntityList(Page1 page) {
        int tc=serviceProjectDao.getTotalCount();
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

        List serviceProjectEntityList = serviceProjectDao.getServiceProjectEntityList(firstResult, maxResult);
        logger.info("{}####",serviceProjectEntityList);
        if (serviceProjectEntityList == null) {
            serviceProjectEntityList = new ArrayList();
        }
        return serviceProjectEntityList;
    }

    @Override
    public ServiceProjectEntity findByIdServiceProjectEntity(long id) {
        return this.serviceProjectDao.findByIdServiceProjectEntity(id);
    }

    @Override
    public int deleteById(long id) {
        return this.serviceProjectDao.deleteById(id);
    }

    @Override
    public int updateByServiceProjectEntityId(ServiceProjectEntity serviceProjectEntity) {
        return this.serviceProjectDao.updateByServiceProjectEntityId(serviceProjectEntity);
    }

    @Override
    public List<ServiceProjectEntity> showServiceProjectList() {
        List serviceProjectLists = this.serviceProjectDao.showServiceProjectList();
        if (serviceProjectLists == null) {
            serviceProjectLists = new ArrayList();
        }
        return serviceProjectLists;
    }
}
