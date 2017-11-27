package com.lockbur.book.service.impl;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.dao.ServicesDao;
import com.lockbur.book.domain.ServicesEntity;
import com.lockbur.book.gateway.service.ServicesService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/4/3.
 */
@Service
public class ServicesServiceImpl implements ServicesService {

    @Resource
    private ServicesDao servicesDao;

    @Override
    public int add2Services(ServicesEntity servicesEntity) {
        return servicesDao.add2Services(servicesEntity);
    }

    @Override
    public List<ServicesEntity> getServicesEntityList(Page1 page) {
        int tc=servicesDao.getTotalCount();
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
        List servicesEntityList = servicesDao.getServicesEntityList(firstResult, maxResult);
        System.out.println("####：   "+servicesEntityList);
        if (servicesEntityList == null) {
            servicesEntityList = new ArrayList();
        }
        return servicesEntityList;
    }

    @Override
    public ServicesEntity findByIdServicesEntity(long id) {

        return this.servicesDao.findByIdServicesEntity(id);
    }

    @Override
    public int deleteById(long id) {
        return this.servicesDao.deleteById(id);
    }

    @Override
    public int updateByServicesEntityId(ServicesEntity servicesEntity) {
        return this.servicesDao.updateByServicesEntityId(servicesEntity);
    }

    @Override
    public List<ServicesEntity> showServiceList() {
        List servicesEntityList = servicesDao.showServiceList();
        if (servicesEntityList == null) {
            servicesEntityList = new ArrayList();
        }
        return servicesEntityList;
    }

}
