package ru.example.security.service;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import ru.example.security.config.AuthRoles;

import java.util.ArrayList;
import java.util.List;

@Service
public class AuthService {

    public List<AuthRoles> getActions() {
        var authRoles = new ArrayList<AuthRoles>();
        var authentication = SecurityContextHolder.getContext().getAuthentication();
        authentication.getAuthorities().forEach(auth -> authRoles.add(AuthRoles.getByAuthority(auth)));
        return authRoles;
    }
}
