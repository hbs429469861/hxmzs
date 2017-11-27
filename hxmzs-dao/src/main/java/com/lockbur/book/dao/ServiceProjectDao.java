package com.lockbur.book.dao;

import com.lockbur.book.domain.ServiceProjectEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by ServiceProjectistrator on 2017/4/4.
 */
public interface ServiceProjectDao {

    int add2ServiceProject(ServiceProjectEntity serviceProjectEntity);

    int getTotalCount();

    List getServiceProjectEntityList(@Param("start") int start, @Param("step") int step);

    ServiceProjectEntity findByIdServiceProjectEntity(@Param("id") long id);

    int deleteById(@Param("id") long id);

    int updateByServiceProjectEntityId(ServiceProjectEntity serviceProjectEntity);

    List showServiceProjectList();
}
