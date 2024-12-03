package vk.itmo.dws.listeners;


import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import org.apache.catalina.User;
import org.springframework.security.core.context.SecurityContextHolder;
import vk.itmo.dws.entity.CRUDEntity;

import java.time.LocalDateTime;

public class BaseEntityListener {
    @PrePersist
    public void prePersist(CRUDEntity model) {
        //Use authenticatedUser = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        model.setCreatedAt(LocalDateTime.now());
        model.setUpdatedAt(LocalDateTime.now());
    }

    @PreUpdate
    public void preUpdate(CRUDEntity model) {
        model.setUpdatedAt(LocalDateTime.now());
    }
}
