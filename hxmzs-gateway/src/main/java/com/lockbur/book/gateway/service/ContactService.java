package com.lockbur.book.gateway.service;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.domain.ContactEntity;

import java.util.List;

/**
 * Created by Administrator on 2017/4/4.
 */
public interface ContactService {
    
    int add2Contact(ContactEntity contactEntity);

    int getTotalCount();

    List getContactEntityList(Page1 page);

    ContactEntity findByIdContactEntity(long id);

    int deleteById(long id);

    int updateByContactEntityId(ContactEntity contactEntity);

    List<ContactEntity> showContactList();
}
