package vk.itmo.dws.listeners;


import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import org.apache.catalina.User;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.jwt.Jwt;
import vk.itmo.dws.entity.CRUDEntity;

import java.time.LocalDateTime;
import java.util.UUID;

public class BaseEntityListener {
    @PrePersist
    public void prePersist(CRUDEntity model) {
        Jwt token  = (Jwt) SecurityContextHolder.getContext().getAuthentication().getCredentials();
        model.setUserId(token.getSubject());
        model.setCreatedAt(LocalDateTime.now());
        model.setUpdatedAt(LocalDateTime.now());
    }

    @PreUpdate
    public void preUpdate(CRUDEntity model) {
        model.setUpdatedAt(LocalDateTime.now());
    }
}
