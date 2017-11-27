package com.lockbur.book.gateway.service;


import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.domain.Admin;
import com.lockbur.book.domain.HomeEntity;

import java.util.List;

/**
 * Created by Administrator on 2017/4/3.
 */
public interface HomeService {

    int add2Home(HomeEntity homeEntity);

    List<HomeEntity> getHomeEntityList(Page1 page);

    HomeEntity findByIdHomeEntity(long id);

    int deleteById(long id);

    int updataByHomeEntityId(HomeEntity homeEntity);

    List<HomeEntity> showHeaderList();
}
