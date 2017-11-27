package com.lockbur.book.manager.controller;

import com.alibaba.fastjson.JSONObject;
import com.lockbur.book.common.utils.MD5Utils;
import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.common.utils.StringUtils;
import com.lockbur.book.domain.Admin;
import com.lockbur.book.domain.HomeEntity;
import com.lockbur.book.gateway.service.AdminService;
import com.lockbur.book.gateway.service.HomeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/4/3.
 */

@Controller
@RequestMapping(value = "home")
public class HomeController {

    private final Logger logger = LoggerFactory.getLogger(HomeController.class);

    private int pageSize = 2;

    @Autowired
    private HomeService homeService;

    @RequestMapping(value = "add2HomeUI", method = RequestMethod.GET)
    public String addAdminUI(HttpServletRequest request, HttpServletResponse response){

        return "home/add2HomeUI";
    }




    @ResponseBody
    @RequestMapping(value = "add2Home", method = RequestMethod.POST,produces={"application/json;charset=UTF-8"})
    public Map<String,String> add2Home(HttpServletRequest request, HttpServletResponse response,HomeEntity homeEntity,@RequestParam(value = "config", required = true) String config){
        Map<String,String> map = new HashMap<String,String>();

        JSONObject jsonObject = JSONObject.parseObject(config);
        String homeTitle=jsonObject.getString("homeTitle");

        if(StringUtils.isNotBlank(homeTitle)){
            homeEntity.setHomeTitle(homeTitle);
        }else {
            map.put("message","传入标题出错！请仔细检查");
            return map;
        }
        if (StringUtils.isNotBlank(jsonObject.getString("homeIntroduce"))){
            homeEntity.setHomeIntroduce(jsonObject.getString("homeIntroduce"));
        }else {
            map.put("message","传入介绍出错！请仔细检查");
            return map;
        }
        if (StringUtils.isNotBlank(jsonObject.getString("homeUrl"))){
            homeEntity.setHomeUrl(jsonObject.getString("homeUrl"));
        }
        else {
            map.put("message","传入图片路径出错！请仔细检查");
            return map;
        }
        if (StringUtils.isNotBlank(jsonObject.getString("imagePosition"))){
            homeEntity.setImagePosition(jsonObject.getString("imagePosition"));
        }
        else {
            map.put("message","传入数据出错！请仔细检查");
            return map;
        }
        homeEntity.setStatus("1");
        int result = homeService.add2Home(homeEntity);
        if(result>0){
            map.put("message","添加成功");
            return map;
        }else {
            map.put("message","添加失败！亲");
            return map;
        }

    }


    /**
     * 列表展示
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "add2HomeList", method = RequestMethod.GET)
    public ModelAndView add2HomeEntityList(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();
        Page1 page = new Page1();

        String pId = request.getParameter("pId");
        if(pId==null || "".equals(pId)){
            pId="1";
        }
        page.setCurrPageNo(Integer.parseInt(pId));
        page.setPageSize(this.pageSize);
        List<HomeEntity>  homeEntityList= this.homeService.getHomeEntityList(page);
        System.out.println(homeEntityList);
        this.logger.info("pid=" + pId + ",pageSize=" + this.pageSize + ",count=" + homeEntityList.size() + ",total=" + page.getRecordCount());
        mv.addObject("homeEntityList", homeEntityList);
        mv.addObject("page", page);
        mv.setViewName("home/add2HomeList");
        return mv;
    }

    @RequestMapping(value = "show2HomeUI", method = RequestMethod.GET)
    public ModelAndView show2HomeUI(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();

        if(StringUtils.isNotBlank(request.getParameter("id"))){
            Map<String,String> map = new HashMap<String,String>();
            Long id= Long.parseLong(request.getParameter("id"));
            HomeEntity home = this.homeService.findByIdHomeEntity(id);
            mv.addObject("home",home);
            mv.setViewName("home/show2HomeUI");
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
    @RequestMapping(value = "edit2HomeUI", method = RequestMethod.GET)
    public ModelAndView edit2HomeUI(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();

        if(StringUtils.isNotBlank(request.getParameter("id"))){
            Map<String,String> map = new HashMap<String,String>();
            Long id= Long.parseLong(request.getParameter("id"));
            HomeEntity home = this.homeService.findByIdHomeEntity(id);
            mv.addObject("home",home);
            mv.setViewName("home/edit2HomeUI");
        }
        else{
            mv.setViewName("error_500");
        }
        return mv;
    }



    /*修改*/
    @ResponseBody
    @RequestMapping(value = "updataByHomeId", method = RequestMethod.POST)
    public Map<String,String> updataByHomeId(HttpServletRequest request, HttpServletResponse response, HomeEntity home){
        Map<String,String> map = new HashMap<String,String>();
        if(StringUtils.isNotBlank(request.getParameter("id"))){
            long id = Long.parseLong(request.getParameter("id"));
        }else{
            map.put("msg","程序出错");
            return map;
        }
        if(StringUtils.isNotBlank(request.getParameter("homeUrl").trim())){
            home.setHomeUrl(request.getParameter("homeUrl"));
            int result = this.homeService.updataByHomeEntityId(home);
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
    }

    /*删除*/
    @ResponseBody
    @RequestMapping(value = "deleteById", method = RequestMethod.POST)
    public Map<String,String> deleteById(HttpServletRequest request, HttpServletResponse response,HomeEntity homeEntity){
        Map<String,String> map = new HashMap<String,String>();
        if(StringUtils.isNotBlank(homeEntity.getId().toString())){
           String status = homeEntity.getStatus();
            if(status.equals("1")){
                homeEntity.setStatus("0");
            }
            int result = this.homeService.updataByHomeEntityId(homeEntity);
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
