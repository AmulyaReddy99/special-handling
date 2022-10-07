package com.company.app.controller;

import com.company.app.model.Patient;
import com.company.app.model.SpecialHandling;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {

    @RequestMapping("/drug-search")
    public String home() {
        return "drug-search";
    }

    @RequestMapping("/update-special-handling")
    public String updateSpecialHandling() {
        return "update-special-handling";
    }

    @RequestMapping("/")
    public String specialHandlingRequests(Model model) {
        SpecialHandling specialHandling = new SpecialHandling(
                "TMPS",
                "Y",
                "2022-10-03-13.20.50.285363",
                "this is test comment",
                "P548G3",
                "SEEHC",
                "2999-12-31",
                "30168",
                "GCN",
                "0001-01-01",
                "NR",
                "05",
                "EPOPROSTENOL SODIUM",
                "", "P",
                "014",
                "0001-01-01-00.00.00.000000",
                "X",
                "2022-10-03"
        );
        Patient patient = new Patient(
                "001",
                specialHandling,
                "Y",
                "0258559759"
        );
        Patient patient2 = new Patient(
                "002",
                specialHandling,
                "Y",
                "0258559759"
        );
        Patient patient3 = new Patient(
                "003",
                specialHandling,
                "Y",
                "0258559759"
        );
        Patient patient4 = new Patient(
                "004",
                specialHandling,
                "Y",
                "0258559759"
        );
        List patientList = new ArrayList();
        patientList.add(patient);
        patientList.add(patient2);
        patientList.add(patient3);
        patientList.add(patient4);
        model.addAttribute("patientList", patientList);
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
