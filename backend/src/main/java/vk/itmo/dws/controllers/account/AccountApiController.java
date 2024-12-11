package vk.itmo.dws.controllers.account;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import vk.itmo.dws.controllers.BaseController;
import vk.itmo.dws.dto.account.UserResponseDto;
import vk.itmo.dws.dto.account.UserSetEmailRequestDto;
import vk.itmo.dws.dto.account.UserSetPasswordRequestDto;
import vk.itmo.dws.dto.account.UserSetPhoneRequestDto;
import vk.itmo.dws.dto.response.ListResponse;
import vk.itmo.dws.dto.response.classes.ClassResponse;
import vk.itmo.dws.dto.response.section.SectionCardResponse;
import vk.itmo.dws.entity.Class;
import vk.itmo.dws.entity.Section;
import vk.itmo.dws.exceptions.account.PasswordsMismatchException;
import vk.itmo.dws.repository.UserRepository;
import vk.itmo.dws.service.SecurityWorkspace;

import java.time.Instant;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import java.util.logging.Logger;


/**
 * Котроллер-затычка для взаимодействия с записью пользователя в keycloak
 */
//TODO добавить в мут для security

@RestController
@CrossOrigin
@RequestMapping("/api/v1/users")
public class AccountApiController extends BaseController implements AccountApi {

    private final Logger logger = Logger.getLogger(this.getClass().getName());
    private final UserRepository userRepository;

    public AccountApiController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public UserResponseDto getUserInfo() {
        return new UserResponseDto(UUID.randomUUID().toString(), "User321@mail.ru",
                true, Instant.now().getEpochSecond(), true, false);
    }


    @Override
    public void setPhoneNumber(@RequestBody UserSetPhoneRequestDto userSetPhoneRequestDto) {
        logger.info("Get info about user auth from SecurityContext......");
        logger.info(String.format("Change phone number, new phone - %s", userSetPhoneRequestDto.getPhone()));
    }

    @Override
    public void setEmail(@RequestBody UserSetEmailRequestDto userSetEmailRequestDto) {
        logger.info("Get info about user auth from SecurityContext......");
        logger.info(String.format("Change email, new email - %s", userSetEmailRequestDto.getEmail()));
    }

    @Override
    public void setPassword(@RequestBody UserSetPasswordRequestDto userSetPasswordRequestDto) {
        String password= userSetPasswordRequestDto.getPassword();
        String passwordConfirm = userSetPasswordRequestDto.getPasswordConfirmation();

        if (!password.equals(passwordConfirm)){
            throw new PasswordsMismatchException();
        }

        else{
            logger.info("Get admin account info...");
            logger.info("I am sending a request to change the password for administrator rights....");
        }
    }

    @Override
    public ResponseEntity<ListResponse<ClassResponse>> getSections() {
        List<Class> classes = userRepository.findById(SecurityWorkspace.getAuthUserId()).orElseThrow().getClasses();
        List<ClassResponse> classResponses;
        if (classes != null) {
            classResponses = classes.stream()
                    .map(ClassResponse::new)
                    .toList();
        } else {
            classResponses = Collections.emptyList();
        }
        return ResponseEntity.ok(new ListResponse<>(classResponses));
    }
}
