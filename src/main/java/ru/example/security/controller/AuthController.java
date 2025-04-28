package ru.example.security.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthController {
    @GetMapping("/")
    public String home() {
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
