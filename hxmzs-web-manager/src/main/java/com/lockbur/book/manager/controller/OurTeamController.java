package com.lockbur.book.manager.controller;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.common.utils.StringUtils;
import com.lockbur.book.domain.*;
import com.lockbur.book.domain.OurTeamEntity;
import com.lockbur.book.domain.OurTeamEntity;
import com.lockbur.book.domain.OurTeamEntity;
import com.lockbur.book.gateway.service.OurTeamService;
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
@RequestMapping(value = "ourTeam")
public class OurTeamController {
    private final Logger logger = LoggerFactory.getLogger(OurTeamController.class);

    private int pageSize = 2;

    @Autowired
    private OurTeamService ourTeamService;


    @RequestMapping(value = "add2OurTeamUI", method = RequestMethod.GET)
    public String addAdminUI(HttpServletRequest request, HttpServletResponse response){

        return "ourTeam/add2OurTeamUI";
    }



    /**
     * 添加
     * @param request
     * @param response
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "add2OurTeam", method = RequestMethod.POST)
    public Map<String,String> add2OurTeam(HttpServletRequest request, HttpServletResponse response, OurTeamEntity ourTeam){
        Map<String,String> map = new HashMap<String,String>();

        System.out.println("save");
        ourTeam.setStatus("1");

        int result = ourTeamService.add2OurTeam(ourTeam);
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
    @RequestMapping(value = "add2OurTeamList", method = RequestMethod.GET)
    public ModelAndView add2OurTeamEntityList(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();
        Page1 page = new Page1();

        String pId = request.getParameter("pId");
        if(pId==null || "".equals(pId)){
            pId="1";
        }
        page.setCurrPageNo(Integer.parseInt(pId));
        page.setPageSize(this.pageSize);
        List<OurTeamEntity> ourTeamEntityList= this.ourTeamService.getOurTeamEntityList(page);
        System.out.println(ourTeamEntityList);
        this.logger.info("pid=" + pId + ",pageSize=" + this.pageSize + ",count=" + ourTeamEntityList.size() + ",total=" + page.getRecordCount());
        mv.addObject("ourTeamEntityList", ourTeamEntityList);
        mv.addObject("page", page);
        mv.setViewName("ourTeam/add2OurTeamList");
        return mv;
    }


    @RequestMapping(value = "show2OurTeamUI", method = RequestMethod.GET)
    public ModelAndView show2OurTeamUI(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();

        if(StringUtils.isNotBlank(request.getParameter("id"))){
            Map<String,String> map = new HashMap<String,String>();
            Long id= Long.parseLong(request.getParameter("id"));
            OurTeamEntity ourTeam = this.ourTeamService.findByIdOurTeamEntity(id);
            mv.addObject("ourTeam",ourTeam);
            mv.setViewName("ourTeam/show2OurTeamUI");
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
    @RequestMapping(value = "edit2OurTeamUI", method = RequestMethod.GET)
    public ModelAndView edit2OurTeamUI(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();

        if(StringUtils.isNotBlank(request.getParameter("id"))){
            Map<String,String> map = new HashMap<String,String>();
            Long id= Long.parseLong(request.getParameter("id"));
            OurTeamEntity ourTeam = this.ourTeamService.findByIdOurTeamEntity(id);
            mv.addObject("ourTeam",ourTeam);
            mv.setViewName("ourTeam/edit2OurTeamUI");
        }
        else{
            mv.setViewName("error_500");
        }
        return mv;
    }


    /*修改*/
    @ResponseBody
    @RequestMapping(value = "updateByOurTeamId", method = RequestMethod.POST)
    public Map<String,String> updateByOurTeamId(HttpServletRequest request, HttpServletResponse response, OurTeamEntity ourTeam){
        Map<String,String> map = new HashMap<String,String>();

        if(StringUtils.isNotBlank(request.getParameter("id"))){
            long id = Long.parseLong(request.getParameter("id"));
        }else{
            map.put("msg","程序出错");
            return map;
        }
        int result = this.ourTeamService.updataByOurTeamEntityId(ourTeam);
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
    public Map<String,String> deleteById(HttpServletRequest request, HttpServletResponse response,OurTeamEntity ourTeamEntity){
        Map<String,String> map = new HashMap<String,String>();
        if(StringUtils.isNotBlank(ourTeamEntity.getId().toString())){
            String status = ourTeamEntity.getStatus();
            if(status.equals("1")){
                ourTeamEntity.setStatus("0");
            }else {
                map.put("msg","该条记录已经删除");
                return map;
            }
            int result = this.ourTeamService.updataByOurTeamEntityId(ourTeamEntity);
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
