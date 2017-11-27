package com.lockbur.book.test.dao;

import com.lockbur.book.dao.AuthorityDao;
import com.lockbur.book.domain.AuthorityEntity;
import com.lockbur.book.test.TestBase;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/10/24.
 */
public class AuthorityDaoTest extends TestBase {

    private final Logger LOGGER = LoggerFactory.getLogger(getClass());

    @Resource
    private AuthorityDao authorityDao;

    //@Test
    public void insert() {
        AuthorityEntity authority = new AuthorityEntity();
        authority.setRoleId(1);
        authority.setAuthority("ROLE_USER");
        authority.setCreatorId(1);
        authorityDao.insert(authority);
    }

   // @Test
    public void findAuthorityByRole() {

        List ins=new ArrayList<>();

        ins.add(1);
        //ins.add(2);

        List<String> list = authorityDao.findAuthorityByRole(ins);

        LOGGER.info("size {}", list.size());
    }
}
