package com.lockbur.book.gateway.service;


import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.domain.CaseProjectEntity;

import java.util.List;

/**
 * Created by Administrator on 2017/4/3.
 */
public interface CaseProjectService {

    int add2CaseProject(CaseProjectEntity caseProjectEntity);

    List<CaseProjectEntity> getCaseProjectEntityList(Page1 page);

    CaseProjectEntity findByIdCaseProjectEntity(long id);

    int deleteById(long id);

    int updataByCaseProjectEntityId(CaseProjectEntity caseProjectEntity);

    List<CaseProjectEntity> showCaseProject();
}
