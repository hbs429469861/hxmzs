package com.lockbur.book.service.impl;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.dao.HomeDao;
import com.lockbur.book.domain.HomeEntity;
import com.lockbur.book.gateway.service.HomeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/4/3.
 */
@Service
public class HomeServiceImpl implements HomeService {

    @Resource
    private HomeDao homeDao;

    @Override
    public int add2Home(HomeEntity homeEntity) {
        return homeDao.add2Home(homeEntity);
    }

    @Override
    public List<HomeEntity> getHomeEntityList(Page1 page) {
        int tc=homeDao.getTotalCount();
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
        List homeEntityList = homeDao.getHomeEntityList(firstResult, maxResult);
        System.out.println("####：   "+homeEntityList);
        if (homeEntityList == null) {
            homeEntityList = new ArrayList();
        }
        return homeEntityList;
    }

    @Override
    public HomeEntity findByIdHomeEntity(long id) {

        return this.homeDao.findByIdHomeEntity(id);
    }

    @Override
    public int deleteById(long id) {
        return this.homeDao.deleteById(id);
    }

    @Override
    public int updataByHomeEntityId(HomeEntity homeEntity) {
        return this.homeDao.updataByHomeEntityId(homeEntity);
    }

    @Override
    public List<HomeEntity> showHeaderList() {
        String imagePosition = "1";
        List homeEntityList = homeDao.showHeaderList(imagePosition);
        if (homeEntityList == null) {
            homeEntityList = new ArrayList();
        }
        return homeEntityList;
    }

}
