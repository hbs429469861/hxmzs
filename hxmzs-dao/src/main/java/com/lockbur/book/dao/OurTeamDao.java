package com.lockbur.book.dao;

import com.lockbur.book.domain.OurTeamEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2017/4/4.
 */
public interface OurTeamDao {

    int add2OurTeam(OurTeamEntity ourTeamEntity);

    int getTotalCount();

    List getOurTeamEntityList(@Param("start") int start, @Param("step") int step);

    OurTeamEntity findByIdOurTeamEntity(@Param("id") long id);

    int deleteById(@Param("id") long id);

    int updateByOurTeamEntityId(OurTeamEntity ourTeamEntity);

    List<OurTeamEntity> showOurTeamList();
}
