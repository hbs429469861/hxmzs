package com.lockbur.book.gateway.service;


import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.domain.ServicesEntity;

import java.util.List;

/**
 * Created by Administrator on 2017/4/3.
 */
public interface ServicesService {

    int add2Services(ServicesEntity servicesEntity);

    List<ServicesEntity> getServicesEntityList(Page1 page);

    ServicesEntity findByIdServicesEntity(long id);

    int deleteById(long id);

    int updateByServicesEntityId(ServicesEntity servicesEntity);

    List<ServicesEntity> showServiceList();
}
