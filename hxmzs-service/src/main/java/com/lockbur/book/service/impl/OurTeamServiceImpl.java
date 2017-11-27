package com.lockbur.book.service.impl;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.dao.OurTeamDao;
import com.lockbur.book.domain.OurTeamEntity;
import com.lockbur.book.gateway.service.OurTeamService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/4/3.
 */
@Service
public class OurTeamServiceImpl implements OurTeamService {

    @Resource
    private OurTeamDao ourTeamDao;

    @Override
    public int add2OurTeam(OurTeamEntity ourTeamEntity) {
        return ourTeamDao.add2OurTeam(ourTeamEntity);
    }

    @Override
    public List<OurTeamEntity> getOurTeamEntityList(Page1 page) {
        int tc=ourTeamDao.getTotalCount();
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
        List ourTeamEntityList = ourTeamDao.getOurTeamEntityList(firstResult, maxResult);
        System.out.println("####：   "+ourTeamEntityList);
        if (ourTeamEntityList == null) {
            ourTeamEntityList = new ArrayList();
        }
        return ourTeamEntityList;
    }

    @Override
    public OurTeamEntity findByIdOurTeamEntity(long id) {

        return this.ourTeamDao.findByIdOurTeamEntity(id);
    }

    @Override
    public int deleteById(long id) {
        return this.ourTeamDao.deleteById(id);
    }

    @Override
    public int updataByOurTeamEntityId(OurTeamEntity ourTeamEntity) {
        return this.ourTeamDao.updateByOurTeamEntityId(ourTeamEntity);
    }

    @Override
    public List<OurTeamEntity> showOurTeamList() {
        List ourTeamEntities = ourTeamDao.showOurTeamList();
        if (ourTeamEntities == null) {
            ourTeamEntities = new ArrayList();
        }
        return ourTeamEntities;
    }

}
