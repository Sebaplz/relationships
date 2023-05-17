package com.seba.relationships.controllers;

import com.seba.relationships.models.License;
import com.seba.relationships.models.Person;
import com.seba.relationships.services.LicenseService;
import com.seba.relationships.services.PersonService;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class MainController {

    private final PersonService personService;
    private final LicenseService licenseService;

    public MainController(PersonService personService, LicenseService licenseService) {
        this.personService = personService;
        this.licenseService = licenseService;
    }

    @GetMapping("/")
    public String home(Model model) {
        List<Person> allPersons = personService.allPersons();
        model.addAttribute("allPersons", allPersons);
        return "index.jsp";
    }

    @GetMapping("/persons/new")
    public String newPerson(@ModelAttribute("person") Person person) {
        return "newPerson.jsp";
    }

    @PostMapping("/persons/new")
    public String createPerson(@Valid @ModelAttribute("person") Person person, BindingResult result) {
        if (result.hasErrors()) {
            return "newPerson.jsp";
        } else {
            personService.createPerson(person);
            return "redirect:/";
        }
    }

    @GetMapping("/licenses/new")
    public String newLicense(@ModelAttribute("license") License license, Model model) {
        List<Person> person = personService.obtenerNoLicenses();
        model.addAttribute("personas", person);
        return "newLicense.jsp";
    }

    @PostMapping("/licenses/new")
    public String createLicense(@Valid @ModelAttribute("license") License license, BindingResult result) {
        if (result.hasErrors()) {
            return "newLicense.jsp";
        } else {
            licenseService.createLicence(license);
            return "redirect:/";
        }
    }

    @GetMapping("/persons/{id}")
    public String show(@PathVariable Long id, Model model) {
        Person person = personService.findPersona(id);
        model.addAttribute("persona", person);
        return "show.jsp";
    }
}
