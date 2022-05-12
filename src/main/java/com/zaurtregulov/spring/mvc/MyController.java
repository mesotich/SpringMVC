package com.zaurtregulov.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String first() {
        return "first-view";
    }

    @RequestMapping("askDetails")
    public String askEmployeeDetails(Model model) {
        Employee emp = new Employee();
        emp.setName("Ivan");
        emp.setSurname("Petrov");
        emp.setSalary(500);
        model.addAttribute("employee", emp);
        return "ask-emp-details-view";
    }

    @RequestMapping("showDetails")
    public String showEmpDetails(@Valid @ModelAttribute("employee") Employee emp
            , BindingResult bindingResult) {
        if (bindingResult.hasErrors())
            return "ask-emp-details-view";
        return "show_emp-details-view";
    }
}
