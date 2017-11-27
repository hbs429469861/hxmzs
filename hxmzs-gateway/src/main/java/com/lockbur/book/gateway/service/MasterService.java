package com.lockbur.book.gateway.service;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.domain.MasterEntity;

import java.util.List;

/**
 * Created by Administrator on 2017/4/4.
 */
public interface MasterService {

    int add2Master(MasterEntity masterEntity);

    int getTotalCount();

    List getMasterEntityList(Page1 page);

    MasterEntity findByIdMasterEntity(long id);

    int deleteById(long id);

    int updateByMasterEntityId(MasterEntity masterEntity);

    List<MasterEntity> showMasterList();

    int selectByCondition(String mastername, String emails);
}
