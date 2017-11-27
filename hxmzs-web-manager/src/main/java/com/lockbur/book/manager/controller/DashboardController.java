package com.lockbur.book.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Administrator on 2016/10/25.
 */
@Controller
@RequestMapping("/")
public class DashboardController {

    @RequestMapping(value = "/dashboard**", method = RequestMethod.GET)
    public String displayDashboard(Model model) {


        return "dashboard";

    }
}
