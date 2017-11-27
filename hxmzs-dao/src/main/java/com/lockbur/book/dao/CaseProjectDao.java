package com.lockbur.book.dao;

import com.lockbur.book.domain.CaseProjectEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2017/4/4.
 */
public interface CaseProjectDao {

    int add2CaseProject(CaseProjectEntity caseProjectEntity);

    int getTotalCount();

    List getCaseProjectEntityList(@Param("start") int start, @Param("step") int step);

    CaseProjectEntity findByIdCaseProjectEntity(@Param("id") long id);

    int deleteById(@Param("id") long id);

    int updateByCaseProjectEntityId(CaseProjectEntity caseProjectEntity);

    List showCaseProject();
}
