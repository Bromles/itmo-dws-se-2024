package vk.itmo.dws.config;

import org.springframework.core.convert.converter.Converter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.oauth2.jwt.Jwt;

import java.util.Collection;

@FunctionalInterface
public interface JwtGrantedAuthorityConverter extends Converter<Jwt, Collection<GrantedAuthority>> {
}
