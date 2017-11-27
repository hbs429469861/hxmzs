package com.lockbur.book.manager.controller;

import com.lockbur.book.common.utils.Page1;
import com.lockbur.book.common.utils.StringUtils;
import com.lockbur.book.domain.CaseProjectEntity;
import com.lockbur.book.gateway.service.CaseProjectService;
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
@RequestMapping(value = "caseProject")
public class CaseProjectController {
    private final Logger logger = LoggerFactory.getLogger(CaseProjectController.class);

    private int pageSize = 2;

    @Autowired
    private CaseProjectService caseProjectService;


    @RequestMapping(value = "add2CaseProjectUI", method = RequestMethod.GET)
    public String addAdminUI(HttpServletRequest request, HttpServletResponse response){

        return "caseProject/add2CaseProjectUI";
    }



    /**
     * 添加
     * @param request
     * @param response
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "add2CaseProject", method = RequestMethod.POST)
    public Map<String,String> add2CaseProject(HttpServletRequest request, HttpServletResponse response, CaseProjectEntity caseProject){
        Map<String,String> map = new HashMap<String,String>();

        System.out.println("save");
        caseProject.setStatus("1");

        int result = caseProjectService.add2CaseProject(caseProject);
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
    @RequestMapping(value = "add2CaseProjectList", method = RequestMethod.GET)
    public ModelAndView add2CaseProjectEntityList(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();
        Page1 page = new Page1();

        String pId = request.getParameter("pId");
        if(pId==null || "".equals(pId)){
            pId="1";
        }
        page.setCurrPageNo(Integer.parseInt(pId));
        page.setPageSize(this.pageSize);
        List<CaseProjectEntity> caseProjectEntityList= this.caseProjectService.getCaseProjectEntityList(page);
        System.out.println(caseProjectEntityList);
        this.logger.info("pid=" + pId + ",pageSize=" + this.pageSize + ",count=" + caseProjectEntityList.size() + ",total=" + page.getRecordCount());
        mv.addObject("caseProjectEntityList", caseProjectEntityList);
        mv.addObject("page", page);
        mv.setViewName("caseProject/add2CaseProjectList");
        return mv;
    }


    @RequestMapping(value = "show2CaseProjectUI", method = RequestMethod.GET)
    public ModelAndView show2CaseProjectUI(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();

        if(StringUtils.isNotBlank(request.getParameter("id"))){
            Map<String,String> map = new HashMap<String,String>();
            Long id= Long.parseLong(request.getParameter("id"));
            CaseProjectEntity caseProject = this.caseProjectService.findByIdCaseProjectEntity(id);
            mv.addObject("caseProject",caseProject);
            mv.setViewName("caseProject/show2CaseProjectUI");
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
    @RequestMapping(value = "edit2CaseProjectUI", method = RequestMethod.GET)
    public ModelAndView edit2CaseProjectUI(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv =new ModelAndView();

        if(StringUtils.isNotBlank(request.getParameter("id"))){
            Map<String,String> map = new HashMap<String,String>();
            Long id= Long.parseLong(request.getParameter("id"));
            CaseProjectEntity caseProject = this.caseProjectService.findByIdCaseProjectEntity(id);
            mv.addObject("caseProject",caseProject);
            mv.setViewName("caseProject/edit2CaseProjectUI");
        }
        else{
            mv.setViewName("error_500");
        }
        return mv;
    }


    /*修改*/
    @ResponseBody
    @RequestMapping(value = "updateByCaseProjectId", method = RequestMethod.POST)
    public Map<String,String> updateByCaseProjectId(HttpServletRequest request, HttpServletResponse response, CaseProjectEntity caseProject){
        Map<String,String> map = new HashMap<String,String>();
        if(StringUtils.isNotBlank(request.getParameter("id"))){
            long id = Long.parseLong(request.getParameter("id"));
        }else{
            map.put("msg","程序出错");
            return map;
        }
        int result = this.caseProjectService.updataByCaseProjectEntityId(caseProject);
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
    public Map<String,String> deleteById(HttpServletRequest request, HttpServletResponse response,CaseProjectEntity caseProjectEntity){
        Map<String,String> map = new HashMap<String,String>();
        if(StringUtils.isNotBlank(caseProjectEntity.getId().toString())){
            String status = caseProjectEntity.getStatus();
            if(status.equals("1")){
                caseProjectEntity.setStatus("0");
            }
            int result = this.caseProjectService.updataByCaseProjectEntityId(caseProjectEntity);
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
