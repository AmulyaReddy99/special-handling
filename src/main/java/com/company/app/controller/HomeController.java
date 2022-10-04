package com.company.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping({ "/", "/drug-search" })
    public String home() {
        return "drug-search";
    }

    @RequestMapping("/update-special-handling")
    public String updateSpecialHandling() {
        return "update-special-handling";
    }

    @RequestMapping("/special-handling-requests")
    public String specialHandlingRequests() {
        return "special-handling-requests";
    }

    @RequestMapping("/special-handling-history")
    public String specialHandlingHistory() {
        return "special-handling-history";
    }

    @RequestMapping("/add-special-handling")
    public String addSpecialHandlingHistory() {
        return "add-special-handling";
    }

}
