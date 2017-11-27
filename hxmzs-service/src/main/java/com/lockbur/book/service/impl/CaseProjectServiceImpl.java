package com.lockbur.book.service.impl;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.dao.CaseProjectDao;
import com.lockbur.book.domain.CaseProjectEntity;
import com.lockbur.book.gateway.service.CaseProjectService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/4/3.
 */
@Service
public class CaseProjectServiceImpl implements CaseProjectService {

    @Resource
    private CaseProjectDao caseProjectDao;

    @Override
    public int add2CaseProject(CaseProjectEntity caseProjectEntity) {
        return caseProjectDao.add2CaseProject(caseProjectEntity);
    }

    @Override
    public List<CaseProjectEntity> getCaseProjectEntityList(Page1 page) {
        int tc=caseProjectDao.getTotalCount();
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
        List caseProjectEntityList = caseProjectDao.getCaseProjectEntityList(firstResult, maxResult);
        System.out.println("####：   "+caseProjectEntityList);
        if (caseProjectEntityList == null) {
            caseProjectEntityList = new ArrayList();
        }
        return caseProjectEntityList;
    }

    @Override
    public CaseProjectEntity findByIdCaseProjectEntity(long id) {

        return this.caseProjectDao.findByIdCaseProjectEntity(id);
    }

    @Override
    public int deleteById(long id) {
        return this.caseProjectDao.deleteById(id);
    }

    @Override
    public int updataByCaseProjectEntityId(CaseProjectEntity caseProjectEntity) {
        return this.caseProjectDao.updateByCaseProjectEntityId(caseProjectEntity);
    }

    @Override
    public List<CaseProjectEntity> showCaseProject() {
        List caseProjects = caseProjectDao.showCaseProject();
        if (caseProjects == null) {
            caseProjects = new ArrayList();
        }
        return caseProjects;
    }

}
