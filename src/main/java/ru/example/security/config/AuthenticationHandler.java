package ru.example.security.config;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import java.io.IOException;

public class AuthenticationHandler implements AuthenticationSuccessHandler {
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException {
        var redirect = request.getContextPath();
        var authorities = authentication.getAuthorities();
        var pathByRole = AuthRoles.getPathByRole(authorities);
        response.sendRedirect(pathByRole == null ? redirect : pathByRole);
    }
}
