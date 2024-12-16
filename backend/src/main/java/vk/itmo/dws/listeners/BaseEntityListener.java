package vk.itmo.dws.listeners;


import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.stereotype.Component;
import vk.itmo.dws.entity.CRUDEntity;
import vk.itmo.dws.entity.User;
import vk.itmo.dws.repository.UserRepository;

import java.time.LocalDateTime;
import java.util.Optional;
import java.util.UUID;

@Component
public class BaseEntityListener {

    @Autowired
    UserRepository userRepository;

    @PrePersist
    public void prePersist(CRUDEntity model) {
        Jwt token  = (Jwt) SecurityContextHolder.getContext().getAuthentication().getCredentials();
        model.setUserId(UUID.fromString(token.getSubject()));
        model.setCreatedAt(LocalDateTime.now());
        model.setUpdatedAt(LocalDateTime.now());
    }

    @PreUpdate
    public void preUpdate(CRUDEntity model) {
        model.setUpdatedAt(LocalDateTime.now());
    }
}
