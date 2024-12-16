package vk.itmo.dws.service;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.stereotype.Service;
import vk.itmo.dws.entity.User;

import java.util.UUID;

@Service
@RequiredArgsConstructor
public class SecurityWorkspace {
    public static UUID getAuthUserId(){
        Jwt token  = (Jwt) SecurityContextHolder.getContext().getAuthentication().getCredentials();
        return UUID.fromString(token.getSubject());
    }

    public static User getAuthUser(){
        Jwt token  = (Jwt) SecurityContextHolder.getContext().getAuthentication().getCredentials();
        User user = new User();
        user.setId(UUID.fromString(token.getSubject()));
        user.setUsername(token.getClaims().get("preferred_username").toString());
        user.setLogin(token.getClaims().get("preferred_username").toString());
        user.setPassword("123123");
        return user;
    }
}
