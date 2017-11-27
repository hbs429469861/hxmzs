package com.lockbur.book.manager.controller;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.common.utils.StringUtils;
import com.lockbur.book.domain.*;
import com.lockbur.book.domain.ContactEntity;
import com.lockbur.book.domain.ContactEntity;
import com.lockbur.book.domain.ContactEntity;
import com.lockbur.book.gateway.service.ContactService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/4/4.
 */

@Controller
@RequestMapping(value="contact")
public class CultureController {
    private final Logger logger = LoggerFactory.getLogger(CultureController.class);

    private int pageSize = 2;

    @Autowired
    private ContactService contactService;



    @RequestMapping(value="add2ContactUI")
    public String add2ContactUI(HttpServletRequest request, HttpServletResponse response){

        return "contact/add2ContactUI";
    }



    /**
     * 添加
     * @param request
     * @param response
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "add2Contact", method = RequestMethod.POST)
    public Map<String,String> add2Contact(HttpServletRequest request, HttpServletResponse response, ContactEntity contact){
        Map<String,String> map = new HashMap<String,String>();

        logger.info("{}","save");
        contact.setStatus("1");

        int result = contactService.add2Contact(contact);
        if(result>0){
            map.put("msg","添加成功");
        }else{
            map.put("msg","添加失败");
        }
        return map;
    }



    /**
     * 列表展示
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "add2ContactList", method = RequestMethod.GET)
    public ModelAndView add2ContactEntityList(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();
        Page1 page = new Page1();

        String pId = request.getParameter("pId");
        if(pId==null || "".equals(pId)){
            pId="1";
        }
        page.setCurrPageNo(Integer.parseInt(pId));
        page.setPageSize(this.pageSize);
        List<ContactEntity> contactEntityList= this.contactService.getContactEntityList(page);
        System.out.println(contactEntityList);
        this.logger.info("pid=" + pId + ",pageSize=" + this.pageSize + ",count=" + contactEntityList.size() + ",total=" + page.getRecordCount());
        mv.addObject("contactEntityList", contactEntityList);
        mv.addObject("page", page);
        mv.setViewName("contact/add2ContactList");
        return mv;
    }


    @RequestMapping(value = "show2ContactUI", method = RequestMethod.GET)
    public ModelAndView show2ContactUI(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();

        if(StringUtils.isNotBlank(request.getParameter("id"))){
            Map<String,String> map = new HashMap<String,String>();
            Long id= Long.parseLong(request.getParameter("id"));
            ContactEntity contact = this.contactService.findByIdContactEntity(id);
            mv.addObject("contact",contact);
            mv.setViewName("contact/show2ContactUI");
        }
        else{
            mv.setViewName("error_500");
        }
        return mv;
    }


    /**
     * 跳转编辑页面
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "edit2ContactUI", method = RequestMethod.GET)
    public ModelAndView edit2ContactUI(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();

        if(StringUtils.isNotBlank(request.getParameter("id"))){
            Map<String,String> map = new HashMap<String,String>();
            Long id= Long.parseLong(request.getParameter("id"));
            ContactEntity contact = this.contactService.findByIdContactEntity(id);
            mv.addObject("contact",contact);
            mv.setViewName("contact/edit2ContactUI");
        }
        else{
            mv.setViewName("error_500");
        }
        return mv;
    }


    /*修改*/
    @ResponseBody
    @RequestMapping(value = "updateByContactId", method = RequestMethod.POST)
    public Map<String,String> updateByContactId(HttpServletRequest request, HttpServletResponse response, ContactEntity contact){
        Map<String,String> map = new HashMap<String,String>();
        if(StringUtils.isNotBlank(request.getParameter("id"))){
            long id = Long.parseLong(request.getParameter("id"));
        }else{
            map.put("msg","程序出错");
            return map;
        }
        int result = this.contactService.updateByContactEntityId(contact);
        if(result>0){
            logger.info("update","ok");
            map.put("msg","修改成功");
            return map;
        }else{
            map.put("msg","修改失败");
            return map;
        }
    }



    /*删除*/
    @ResponseBody
    @RequestMapping(value = "deleteById", method = RequestMethod.POST)
    public Map<String,String> deleteById(HttpServletRequest request, HttpServletResponse response,ContactEntity contactEntity){
        Map<String,String> map = new HashMap<String,String>();
        if(StringUtils.isNotBlank(contactEntity.getId().toString())){
            String status = contactEntity.getStatus();
            if(status.equals("1")){
                contactEntity.setStatus("0");
            }
            int result = this.contactService.updateByContactEntityId(contactEntity);
            if(result>0){
                map.put("msg","删除成功");
            }else{
                map.put("msg","删除失败");
            }
        }else{
            map.put("msg","程序出错");
        }
        return map;
    }


}
