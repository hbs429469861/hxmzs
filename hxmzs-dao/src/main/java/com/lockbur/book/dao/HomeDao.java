package com.lockbur.book.dao;


import com.lockbur.book.domain.Admin;
import com.lockbur.book.domain.HomeEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2017/4/3.
 */
public interface HomeDao {

    int add2Home(HomeEntity homeEntity);

    int getTotalCount();

    List getHomeEntityList(@Param("start") int start, @Param("step") int step);

    HomeEntity findByIdHomeEntity(@Param("id") long id);

    int deleteById(@Param("id") long id);

    int updataByHomeEntityId(HomeEntity homeEntity);

    List showHeaderList(@Param("imagePosition") String imagePosition);
}
