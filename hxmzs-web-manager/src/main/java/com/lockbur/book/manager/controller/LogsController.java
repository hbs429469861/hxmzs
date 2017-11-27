package com.lockbur.book.manager.controller;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.common.utils.StringUtils;
import com.lockbur.book.domain.LogsEntity;
import com.lockbur.book.gateway.service.LogsService;
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
 * Created by Logsistrator on 2017/4/4.
 */
@Controller
@RequestMapping(value="logs")
public class LogsController {

    private final Logger logger = LoggerFactory.getLogger(LogsController.class);

    private int pageSize = 2;


    @Autowired
    private LogsService logsService;

    @RequestMapping(value="add2LogsUI")
    public String addd2Article(HttpServletRequest request, HttpServletResponse response){

        return "logs/add2LogsUI";
    }


    /**
     * 添加
     * @param request
     * @param response
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "add2Logs", method = RequestMethod.POST)
    public Map<String,String> add2Logs(HttpServletRequest request, HttpServletResponse response, LogsEntity logs){
        Map<String,String> map = new HashMap<String,String>();

        System.out.println("save");
        logs.setStatus("1");

        int result = logsService.add2Logs(logs);
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
    @RequestMapping(value = "add2LogsList", method = RequestMethod.GET)
    public ModelAndView add2LogsEntityList(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();
        Page1 page = new Page1();

        String pId = request.getParameter("pId");
        if(pId==null || "".equals(pId)){
            pId="1";
        }
        page.setCurrPageNo(Integer.parseInt(pId));
        page.setPageSize(this.pageSize);
        List<LogsEntity> logsEntityList= this.logsService.getLogsEntityList(page);
        System.out.println(logsEntityList);
        this.logger.info("pid=" + pId + ",pageSize=" + this.pageSize + ",count=" + logsEntityList.size() + ",total=" + page.getRecordCount());
        mv.addObject("logsEntityList", logsEntityList);
        mv.addObject("page", page);
        mv.setViewName("logs/add2LogsList");
        return mv;
    }


    @RequestMapping(value = "show2LogsUI", method = RequestMethod.GET)
    public ModelAndView show2LogsUI(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();

        if(StringUtils.isNotBlank(request.getParameter("id"))){
            Map<String,String> map = new HashMap<String,String>();
            Long id= Long.parseLong(request.getParameter("id"));
            LogsEntity logs = this.logsService.findByIdLogsEntity(id);
            mv.addObject("logs",logs);
            mv.setViewName("logs/show2LogsUI");
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
    @RequestMapping(value = "edit2LogsUI", method = RequestMethod.GET)
    public ModelAndView edit2LogsUI(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();

        if(StringUtils.isNotBlank(request.getParameter("id"))){
            Map<String,String> map = new HashMap<String,String>();
            Long id= Long.parseLong(request.getParameter("id"));
            LogsEntity logs = this.logsService.findByIdLogsEntity(id);
            mv.addObject("logs",logs);
            mv.setViewName("logs/edit2LogsUI");
        }
        else{
            mv.setViewName("error_500");
        }
        return mv;
    }


    /*修改*/
    @ResponseBody
    @RequestMapping(value = "updateByLogsId", method = RequestMethod.POST)
    public Map<String,String> updateByLogsId(HttpServletRequest request, HttpServletResponse response, LogsEntity logs){
        Map<String,String> map = new HashMap<String,String>();
        if(StringUtils.isNotBlank(request.getParameter("id"))){
            long id = Long.parseLong(request.getParameter("id"));
        }else{
            map.put("msg","程序出错");
            return map;
        }
            int result = this.logsService.updateByLogsEntityId(logs);
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
    public Map<String,String> deleteById(HttpServletRequest request, HttpServletResponse response,LogsEntity logsEntity){
        Map<String,String> map = new HashMap<String,String>();
        if(StringUtils.isNotBlank(logsEntity.getId().toString())){
            String status = logsEntity.getStatus();
            if(status.equals("1")){
                logsEntity.setStatus("0");
            }
            int result = this.logsService.updateByLogsEntityId(logsEntity);
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
