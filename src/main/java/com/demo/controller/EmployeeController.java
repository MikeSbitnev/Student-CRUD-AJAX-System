package com.demo.controller;


import com.demo.model.Employee;
import com.demo.service.EmployeeServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping
public class EmployeeController {

    @Autowired
    EmployeeServices employeeServices;

    // lode add employee form
    @GetMapping("addEmployee")
    public String addEmp()
    {
        return "AddEmployee";
    }

    // save employee form
    @PostMapping("/insertEmployee")
    public String insertEmployee(@ModelAttribute("insertEmployee") Employee emp)
    {
        employeeServices.addEmp(emp);
        return "redirect:/employeeReport";
    }

    // lode employee data
    @GetMapping("employeeReport")
    public String lodeEmployee(Model m)
    {
        m.addAttribute("employee", employeeServices.getAllEmp());
        m.addAttribute("title", "Employee Report");

        return "EmployeeReport";
    }

    // lode edit form
    @GetMapping("/editEmployee/{id}")
    public String lodeEditForm(@PathVariable(value = "id") Long id, Model m)
    {
        Employee emp = employeeServices.getById(id);

        m.addAttribute("employee", emp);
        m.addAttribute("title", "Edit Employee");

        return "EditEmployee";

    }

    @PostMapping("/editEmployee/updateEmployee")
    public String updateEmp(@ModelAttribute("updateEmployee") Employee emp)
    {
        employeeServices.updateEmp(emp);
        return "redirect:/employeeReport";
    }

    @GetMapping("/deleteEmployee/{id}")
    public String deleteEmployee(@PathVariable Long id)
    {
        employeeServices.deleteEmployee(id);
        return "redirect:/employeeReport";
    }


}
