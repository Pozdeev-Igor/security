package ru.example.security.config;

import lombok.Getter;
import org.springframework.security.core.GrantedAuthority;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Optional;

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

    public static String getPathByRole(Collection<? extends GrantedAuthority> authorities) {
        Iterator<? extends GrantedAuthority> iterator = authorities.iterator();
        Optional<AuthRoles> roleOptional;
        while (iterator.hasNext()) {
            var next = iterator.next().getAuthority();
            roleOptional = Arrays.stream(values()).filter(it -> it.role.equals(next)).findFirst();
            if (roleOptional.isPresent()) {
                return roleOptional.get().path;
            }
        }
        return null;
    }
}
