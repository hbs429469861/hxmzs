package com.lockbur.book.gateway.service;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.domain.MottoEntity;

import java.util.List;

/**
 * Created by Administrator on 2017/4/4.
 */
public interface MottoService {

    int add2Motto(MottoEntity mottoEntity);

    int getTotalCount();

    List getMottoEntityList(Page1 page);

    MottoEntity findByIdMottoEntity(long id);

    int deleteById(long id);

    int updateByMottoEntityId(MottoEntity mottoEntity);

    List<MottoEntity> showMottoList();
}
