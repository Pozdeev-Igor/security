package ru.example.security.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ru.example.security.config.AuthRoles;
import ru.example.security.service.AuthService;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class AuthController {

    private final AuthService service;
    @GetMapping("/")
    public String home(Model model) {
        List<AuthRoles> actions = service.getActions();
        model.addAttribute("actions", actions);
        return "index";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/consumer")
    public String consumer() {
        return "consumer";
    }

    @GetMapping("/producer")
    public String producer() {
        return "producer";
    }
    @GetMapping("/admin")
    public String admin() {
        return "admin";
    }
}
