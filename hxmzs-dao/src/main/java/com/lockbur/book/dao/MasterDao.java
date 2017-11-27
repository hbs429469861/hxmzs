package com.lockbur.book.dao;

import com.lockbur.book.domain.MasterEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Masteristrator on 2017/4/4.
 */
public interface MasterDao {

    int add2Master(MasterEntity masterEntity);

    int getTotalCount();

    List getMasterEntityList(@Param("start") int start, @Param("step") int step);

    MasterEntity findByIdMasterEntity(@Param("id") long id);

    int deleteById(@Param("id") long id);

    int updateByMasterEntityId(MasterEntity masterEntity);

    List showMasterList();

    int selectByCondition(@Param("masterName") String masterName, @Param("masterEmail")  String masterEmail);
}
