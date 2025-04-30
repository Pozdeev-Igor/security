package ru.example.security.config;

import lombok.Getter;
import org.springframework.security.core.GrantedAuthority;

import java.util.Arrays;

@Getter
public enum AuthRoles {
    ADMIN("ROLE_ADMIN", "/admin"),
    PRODUCER("ROLE_PRODUCER", "/producer"),
    CONSUMER("ROLE_CONSUMER", "/consumer");

    AuthRoles(String role, String path) {
        this.role = role;
        this.path = path;
    }

    private final String role;
    private final String path;

    public static <T extends GrantedAuthority>AuthRoles getByAuthority(T auth) {
        return Arrays.stream(values())
                .filter(v -> v.role.equals(auth.getAuthority()))
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("no such role"));
    }
}
