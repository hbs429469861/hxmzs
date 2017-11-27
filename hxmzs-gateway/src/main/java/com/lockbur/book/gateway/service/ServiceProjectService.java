package com.lockbur.book.gateway.service;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.domain.ServiceProjectEntity;

import java.util.List;

/**
 * Created by Administrator on 2017/4/4.
 */
public interface ServiceProjectService {

    int add2ServiceProject(ServiceProjectEntity serviceProjectEntity);

    int getTotalCount();

    List getServiceProjectEntityList(Page1 page);

    ServiceProjectEntity findByIdServiceProjectEntity(long id);

    int deleteById(long id);

    int updateByServiceProjectEntityId(ServiceProjectEntity serviceProjectEntity);

    List<ServiceProjectEntity> showServiceProjectList();
}
