package com.lockbur.book.dao;

import com.lockbur.book.domain.MottoEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Mottoistrator on 2017/4/4.
 */
public interface MottoDao {

    int add2Motto(MottoEntity mottoEntity);

    int getTotalCount();

    List getMottoEntityList(@Param("start") int start, @Param("step") int step);

    MottoEntity findByIdMottoEntity(@Param("id") long id);

    int deleteById(@Param("id") long id);

    int updateByMottoEntityId(MottoEntity mottoEntity);

    List showMottoList();
}
