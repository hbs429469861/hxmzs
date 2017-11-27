package com.lockbur.book.dao;

import com.lockbur.book.domain.ContactEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2017/4/4.
 */
public interface ContactDao {

    int add2Contact(ContactEntity contactEntity);

    int getTotalCount();

    List getContactEntityList(@Param("start") int start, @Param("step") int step);

    ContactEntity findByIdContactEntity(@Param("id") long id);

    int deleteById(@Param("id") long id);

    int updateByContactEntityId(ContactEntity contactEntity);

    List showContactList();
}
