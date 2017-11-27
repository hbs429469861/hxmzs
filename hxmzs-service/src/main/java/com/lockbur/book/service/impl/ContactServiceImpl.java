package com.lockbur.book.service.impl;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.dao.ContactDao;
import com.lockbur.book.domain.ContactEntity;
import com.lockbur.book.gateway.service.ContactService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/4/4.
 */
@Service
public class ContactServiceImpl implements ContactService{

    private final Logger logger = LoggerFactory.getLogger(ContactServiceImpl.class);

    @Resource
    private ContactDao contactDao;


    @Override
    public int add2Contact(ContactEntity contactEntity) {
        return contactDao.add2Contact(contactEntity);
    }

    @Override
    public int getTotalCount() {
        return contactDao.getTotalCount();
    }

    @Override
    public List getContactEntityList(Page1 page) {
        int tc=contactDao.getTotalCount();
        page.setRecordCount(tc);

        if (tc % page.getPageSize() == 0)
        {
            int totalPageCount=tc / page.getPageSize();
            page.setTotalPageCount(totalPageCount);
        }
        else
        {
            int totalPageCount = tc / page.getPageSize() + 1;
            page.setTotalPageCount(totalPageCount);
        }
        int firstResult = 0;
        int maxResult = 0;
        firstResult = (page.getCurrPageNo() - 1) * page.getPageSize();
        maxResult = page.getPageSize();

        List contactEntityList = contactDao.getContactEntityList(firstResult, maxResult);
        logger.info("{}####",contactEntityList);
        if (contactEntityList == null) {
            contactEntityList = new ArrayList();
        }
        return contactEntityList;
    }

    @Override
    public ContactEntity findByIdContactEntity(long id) {
        return this.contactDao.findByIdContactEntity(id);
    }

    @Override
    public int deleteById(long id) {
        return this.contactDao.deleteById(id);
    }

    @Override
    public int updateByContactEntityId(ContactEntity contactEntity) {
        return this.contactDao.updateByContactEntityId(contactEntity);
    }

    @Override
    public List<ContactEntity> showContactList() {
        List contactLists = this.contactDao.showContactList();
        if (contactLists == null) {
            contactLists = new ArrayList();
        }
        return contactLists;
    }

    /*showContactList*/
}
