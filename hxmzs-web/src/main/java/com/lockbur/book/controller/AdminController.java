package com.lockbur.book.controller;


import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lockbur.book.domain.*;
import com.lockbur.book.gateway.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Administrator
 */
@Controller
public class AdminController {


    @Autowired
    private HomeService homeService;


    @Autowired
    private ServicesService servicesService;


    @Autowired
    private OurTeamService ourTeamService;


    @Autowired
    private CaseProjectService caseProjectService;

    @Autowired
    private ServiceProjectService serviceProjectService;


    @Autowired
    private MottoService mottoService;

    @Autowired
    private ContactService contactService;


    @Autowired
    private EmailService emailService;

    @Autowired
    private MasterService masterService;

    @RequestMapping("/")
    public ModelAndView displayAdminList(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        List<HomeEntity> homeEntities = homeService.showHeaderList();
        if(homeEntities.size()>0 && homeEntities!=null){
            modelAndView.addObject("homeEntities",homeEntities);
        }

        List<ServicesEntity> servicesServices = servicesService.showServiceList();
        if(servicesServices.size()>0 && servicesServices!=null){
            modelAndView.addObject("servicesServices",servicesServices);
        }

        List<OurTeamEntity> ourTeamEntities = ourTeamService.showOurTeamList();
        if(ourTeamEntities.size()>0 && ourTeamEntities!=null){
            modelAndView.addObject("ourTeamEntities",ourTeamEntities);
        }

        List<CaseProjectEntity> caseProjectEntities = caseProjectService.showCaseProject();
        if(caseProjectEntities.size()>0 && caseProjectEntities!=null){
            modelAndView.addObject("caseProjectEntities",caseProjectEntities);
        }

        List<ServiceProjectEntity> serviceProjectEntities = serviceProjectService.showServiceProjectList();
        if(serviceProjectEntities.size()>0 && serviceProjectEntities!=null){
            modelAndView.addObject("serviceProjectEntities",serviceProjectEntities);
        }

        /**/
        List<MottoEntity> mottoEntities = mottoService.showMottoList();
        if(mottoEntities.size()>0 && mottoEntities!=null){
            modelAndView.addObject("mottoEntities",mottoEntities);
        }

        List<ContactEntity> contactEntities = contactService.showContactList();
        if(contactEntities.size()>0 && contactEntities!=null){
            modelAndView.addObject("contactEntities",contactEntities);
        }


        modelAndView.setViewName("indexs");
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping("saveMaster")
    public Map<String,String> welcome(HttpServletRequest request, HttpServletResponse response){

        Map map = new HashMap();
        Map<String,String> map2 = new HashMap<String,String>();
        String mastername = request.getParameter("mastername");
        String emails = request.getParameter("emails");

        MasterEntity masterEntity = new MasterEntity();
        int master =masterService.selectByCondition(mastername,emails);
        if(master>0){
            map2.put("message","你已经提交过您的信息，请不要重复提交，谢谢！！！");
            return map2;
        }else {
            masterEntity.setStatus("1");
            masterEntity.setMasterEmail(emails);
            masterEntity.setMasterAddress(request.getParameter("masterAddress"));
            masterEntity.setMasterName(mastername);
            masterService.add2Master(masterEntity);
            map2.put("message","恭喜你提交成功");
            map.put("username",mastername);
            map.put("emails",emails);
            try {
                emailService.send("272146640@qq.com", mastername+"用户在主页提交了信息", "master_register_mail.vm", map);
                emailService.send("429469861@qq.com", mastername+"用户在主页提交了信息", "master_register_mail.vm", map);
            } catch (MessagingException e) {
                e.printStackTrace();
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }

        return map2;
    }


    @RequestMapping("showDetail")
    public ModelAndView showDetail(HttpServletRequest request,HttpServletResponse response){
        ModelAndView mv = new ModelAndView();
        Long id= Long.parseLong(request.getParameter("caseId"));
        CaseProjectEntity caseProjectEntity = caseProjectService.findByIdCaseProjectEntity(id);
        if (caseProjectEntity!=null){
            mv.addObject("caseProjectEntity",caseProjectEntity);
            mv.setViewName("content/showDetail");
        }else {
            mv.setViewName("error_500");
        }
        return mv;
    }


}
