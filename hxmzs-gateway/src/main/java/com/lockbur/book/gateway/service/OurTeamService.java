package com.lockbur.book.gateway.service;


import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.domain.OurTeamEntity;

import java.util.List;

/**
 * Created by Administrator on 2017/4/3.
 */
public interface OurTeamService {

    int add2OurTeam(OurTeamEntity ourTeamEntity);

    List<OurTeamEntity> getOurTeamEntityList(Page1 page);

    OurTeamEntity findByIdOurTeamEntity(long id);

    int deleteById(long id);

    int updataByOurTeamEntityId(OurTeamEntity ourTeamEntity);

    List<OurTeamEntity> showOurTeamList();
}
