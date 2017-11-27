package com.lockbur.book.manager.controller;

import com.lockbur.book.common.utils.MD5Utils;
import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.common.utils.StringUtils;
import com.lockbur.book.domain.Admin;
import com.lockbur.book.gateway.service.AdminService;
import com.lockbur.book.gateway.service.EmailService;
import org.apache.commons.collections.map.HashedMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/10/25.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    private final Logger logger = LoggerFactory.getLogger(getClass());

    private int pageSize = 15;

    @Autowired
    private AdminService adminService;
    @Autowired
    private EmailService emailService;


    /**
     *
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "add2AdminUI", method = RequestMethod.GET)
    public String addAdminUI(HttpServletRequest request, HttpServletResponse response){

        return "admin/add2AdminUI";
    }


    /**
     * 保存
     * @param request
     * @param response
     * @return
     */

    /*add2AadminList*/
    @ResponseBody
    @RequestMapping(value = "add2Admin", method = RequestMethod.POST)
    public Map<String,String> add2Admin(HttpServletRequest request, HttpServletResponse response){
        Map<String,String> map = new HashMap<String,String>();

        System.out.println("save");
        //String username = admin.getUsername().trim();
        String username = request.getParameter("username");
        Admin admin1 = adminService.selectByNamePwd(username);
        if(admin1!=null){
            map.put("msg","用户名已存在");
            return map;
        }

        Admin admin = new Admin();
        String pwd = request.getParameter("pwd");
        String password = MD5Utils.string2MD5(pwd);
        admin.setUsername(username);
        admin.setPassword(password);
        admin.setAdminType(request.getParameter("adminTypes"));

        int result = adminService.add2Admin(admin);
        if(result>0){
            map.put("msg","添加成功");
        }else{
            map.put("msg","添加失败");
        }
        return map;
    }









    /*add2AadminList*/
    @RequestMapping(value = "add2AdminList", method = RequestMethod.GET)
    public ModelAndView add2AadminList(HttpServletRequest request, HttpServletResponse response){
            ModelAndView mv =new ModelAndView();
            Page1 page = new Page1();

            String pId = request.getParameter("pId");
            if(pId==null || "".equals(pId)){
                pId="1";
            }
            page.setCurrPageNo(Integer.parseInt(pId));
            page.setPageSize(this.pageSize);
            List<Admin> adminList= this.adminService.getAdminList(page);
            System.out.println(adminList);
            this.logger.info("pid=" + pId + ",pageSize=" + this.pageSize + ",count=" + adminList.size() + ",total=" + page.getRecordCount());
            mv.addObject("adminList", adminList);
            mv.addObject("page", page);
            mv.setViewName("admin/add2AdminList");
            return mv;
    }

    /**
     * show2AdminUI
     */
    @RequestMapping(value = "show2AdminUI", method = RequestMethod.GET)
    public ModelAndView show2AdminUI(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();

        if(StringUtils.isNotBlank(request.getParameter("id"))){
            Map<String,String> map = new HashMap<String,String>();
            Long id= Long.parseLong(request.getParameter("id"));
            Admin admin = this.adminService.findByIdAdmin(id);
            mv.addObject("admin",admin);
            mv.setViewName("admin/show2AdminUI");
        }
        else{
            mv.setViewName("error_500");
        }
        return mv;
    }

    /*edit2AdminUI.jsp*/
    @RequestMapping(value = "edit2AdminUI", method = RequestMethod.GET)
    public ModelAndView edit2AdminUI(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();

        if(StringUtils.isNotBlank(request.getParameter("id"))){
            Map<String,String> map = new HashMap<String,String>();
            Long id= Long.parseLong(request.getParameter("id"));
            Admin admin = this.adminService.findByIdAdmin(id);
            mv.addObject("admin",admin);
            mv.setViewName("admin/edit2AdminUI");
        }
        else{
            mv.setViewName("error_500");
        }
        return mv;
    }


   /* *//*修改*//*
    @ResponseBody
    @RequestMapping(value = "updataByAdminId", method = RequestMethod.POST)
    public Map<String,String> updataByAdminId(HttpServletRequest request, HttpServletResponse response, Admin admin){
        Map<String,String> map = new HashMap<String,String>();
        if(StringUtils.isNotBlank(request.getParameter("id"))){
           long id = Long.parseLong(request.getParameter("id"));
        }else{
            map.put("msg","程序出错");
            return map;
        }
        if(StringUtils.isNotBlank(request.getParameter("username").trim())){
            admin.setUsername(request.getParameter("username"));
            admin.setPassword(MD5Utils.string2MD5(request.getParameter("password")));
            int result = this.adminService.updataByAdminId(admin);
            if(result>0){
                logger.info("update","ok");
                map.put("msg","修改成功");
                return map;
            }else{
                map.put("msg","修改失败");
                return map;
            }
        }else{
            map.put("msg","程序出错");
            return map;
        }
    }*/


    /*删除*/
    @ResponseBody
    @RequestMapping(value = "deleteById", method = RequestMethod.POST)
    public Map<String,String> deleteById(HttpServletRequest request, HttpServletResponse response, HttpSession session){
        Map<String,String> map = new HashMap<String,String>();
        if(session.getAttribute("admin")==null){
            map.put("msg","请重新登陆");
            return map;

        }
        if(StringUtils.isNotBlank(request.getParameter("id"))){
            Long id= Long.parseLong(request.getParameter("id"));
            int result = this.adminService.deleteById(id);
            if(result>0){
                map.put("msg","删除成功");
            }else{
                map.put("msg","删除失败");
            }
            String hosts="272146640@qq.com";
            Map map2 = new HashMap<String,String>();
            map2.put("username",session.getAttribute("admin").toString());
            map2.put("url","请登录<a href='http://admin.hbsong.cn/'>查看</a>");
            try {
                emailService.send("429469861@qq.com", session.getAttribute("admin").toString()+"SERVICE PROJECT被修改了", "user_warning_mail.vm", map2);
            } catch (MessagingException e) {
                map.put("msg","程序发生错误");
                e.printStackTrace();
                return map;
            } catch (UnsupportedEncodingException e) {
                map.put("msg","程序发生错误");
                e.printStackTrace();
                return map;
            }
        }else{
            map.put("msg","程序出错");
        }
        return map;
    }



}
