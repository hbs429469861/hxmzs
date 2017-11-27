package com.lockbur.book.manager.controller;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.common.utils.StringUtils;
import com.lockbur.book.domain.ServicesEntity;
import com.lockbur.book.gateway.service.ServicesService;
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
@RequestMapping(value = "service")
public class ServiceCoreController {

    private final Logger logger = LoggerFactory.getLogger(ServiceCoreController.class);

    private int pageSize = 2;

    @Autowired
    private ServicesService servicesService;


    @RequestMapping(value = "iconSetting", method = RequestMethod.GET)
    public String iconSetting(HttpServletRequest request, HttpServletResponse response){

        return "service/icons";
    }


    @RequestMapping(value = "add2ServicesUI", method = RequestMethod.GET)
    public String addAdminUI(HttpServletRequest request, HttpServletResponse response){

        return "service/add2ServicesUI";
    }



    /**
     * 添加
     * @param request
     * @param response
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "add2Services", method = RequestMethod.POST)
    public Map<String,String> add2Services(HttpServletRequest request, HttpServletResponse response, ServicesEntity services){
        Map<String,String> map = new HashMap<String,String>();

        System.out.println("save");
        services.setStatus("1");

        int result = servicesService.add2Services(services);
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
    @RequestMapping(value = "add2ServicesList", method = RequestMethod.GET)
    public ModelAndView add2ServicesEntityList(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();
        Page1 page = new Page1();

        String pId = request.getParameter("pId");
        if(pId==null || "".equals(pId)){
            pId="1";
        }
        page.setCurrPageNo(Integer.parseInt(pId));
        page.setPageSize(this.pageSize);
        List<ServicesEntity> servicesEntityList= this.servicesService.getServicesEntityList(page);
        System.out.println(servicesEntityList);
        this.logger.info("pid=" + pId + ",pageSize=" + this.pageSize + ",count=" + servicesEntityList.size() + ",total=" + page.getRecordCount());
        mv.addObject("servicesEntityList", servicesEntityList);
        mv.addObject("page", page);
        mv.setViewName("service/add2ServicesList");
        return mv;
    }


    @RequestMapping(value = "show2ServicesUI", method = RequestMethod.GET)
    public ModelAndView show2ServicesUI(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();

        if(StringUtils.isNotBlank(request.getParameter("id"))){
            Map<String,String> map = new HashMap<String,String>();
            Long id= Long.parseLong(request.getParameter("id"));
            ServicesEntity services = this.servicesService.findByIdServicesEntity(id);
            mv.addObject("services",services);
            mv.setViewName("service/show2ServicesUI");
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
    @RequestMapping(value = "edit2ServicesUI", method = RequestMethod.GET)
    public ModelAndView edit2ServicesUI(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();

        if(StringUtils.isNotBlank(request.getParameter("id"))){
            Map<String,String> map = new HashMap<String,String>();
            Long id= Long.parseLong(request.getParameter("id"));
            ServicesEntity services = this.servicesService.findByIdServicesEntity(id);
            mv.addObject("services",services);
            mv.setViewName("service/edit2ServicesUI");

        }
        else{
            mv.setViewName("error_500");
        }

        return mv;
    }


    /*修改*/
    @ResponseBody
    @RequestMapping(value = "updateByServicesId", method = RequestMethod.POST)
    public Map<String,String> updateByServicesId(HttpServletRequest request, HttpServletResponse response, ServicesEntity services){
        Map<String,String> map = new HashMap<String,String>();
        if(StringUtils.isNotBlank(request.getParameter("id"))){
            long id = Long.parseLong(request.getParameter("id"));
        }else{
            map.put("msg","程序出错");
            return map;
        }
        int result = this.servicesService.updateByServicesEntityId(services);
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
    public Map<String,String> deleteById(HttpServletRequest request, HttpServletResponse response,ServicesEntity servicesEntity){
        Map<String,String> map = new HashMap<String,String>();
        if(StringUtils.isNotBlank(servicesEntity.getId().toString())){
            String status = servicesEntity.getStatus();
            if(status.equals("1")){
                servicesEntity.setStatus("0");
            }
            int result = this.servicesService.updateByServicesEntityId(servicesEntity);
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
