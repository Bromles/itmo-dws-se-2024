package vk.itmo.dws.service;

import lombok.RequiredArgsConstructor;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.stereotype.Service;
import vk.itmo.dws.entity.Basket;
import vk.itmo.dws.entity.User;
import vk.itmo.dws.repository.*;

import java.util.Optional;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final BasketRepository basketRepository;

    public Optional<User> findById(UUID userId){
        return userRepository.findById(userId);
    }

    public User editUser(User user){
        if(!userHasBasket(user.getId())){
            createBasket(user.getId());
        }
        return userRepository.save(user);
    }
    public boolean isUserExists(String userId){

        return userRepository.findById(userId).isPresent();
    }

    public User createUser(Jwt token){
        User user = new User();
        user.setUsername((String) token.getClaims().get("preferred_username"));
        user.setPassword("123123");
        user.setId(UUID.fromString(token.getSubject()));
        user.setLogin(token.getClaims().get("preferred_username").toString());
        if(!userHasBasket(user.getId())){
            createBasket(user.getId());
        }

        return userRepository.save(user);
    }

    public boolean userHasBasket(UUID userId){
        return basketRepository.findByUserId(userId).isPresent();
    }

    public void createBasket(UUID userId){
        Basket basket = new Basket();
        basket.setUserId(userId);
        basketRepository.save(basket);
    }
}
