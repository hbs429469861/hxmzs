package com.lockbur.book.dao;

import com.lockbur.book.domain.ServicesEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2017/4/4.
 */
public interface ServicesDao {

    int add2Services(ServicesEntity servicesEntity);

    int getTotalCount();

    List getServicesEntityList(@Param("start") int start, @Param("step") int step);

    ServicesEntity findByIdServicesEntity(@Param("id") long id);

    int deleteById(@Param("id") long id);

    int updateByServicesEntityId(ServicesEntity servicesEntity);

    List<ServicesEntity> showServiceList();
}
