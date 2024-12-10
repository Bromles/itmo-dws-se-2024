package vk.itmo.dws.controllers.abonement;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import vk.itmo.dws.contracts.AbonementService;
import vk.itmo.dws.controllers.BaseController;
import vk.itmo.dws.dto.account.UserResponseDto;
import vk.itmo.dws.dto.account.UserSetEmailRequestDto;
import vk.itmo.dws.dto.account.UserSetPasswordRequestDto;
import vk.itmo.dws.dto.account.UserSetPhoneRequestDto;
import vk.itmo.dws.dto.response.ListResponse;
import vk.itmo.dws.dto.response.abonement.AbonementResponse;
import vk.itmo.dws.dto.response.abonement.AbonementUsageResponse;
import vk.itmo.dws.dto.response.classes.ClassResponse;
import vk.itmo.dws.entity.Abonement;
import vk.itmo.dws.entity.AbonementUsage;
import vk.itmo.dws.entity.Class;
import vk.itmo.dws.entity.User;
import vk.itmo.dws.exceptions.account.PasswordsMismatchException;
import vk.itmo.dws.repository.UserRepository;

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
@AllArgsConstructor
@RequestMapping("/api/v1/abonements")
public class AbonementApiController extends BaseController implements AbonementApi {

    private final Logger logger = Logger.getLogger(this.getClass().getName());
    private final UserRepository userRepository;
    private final AbonementService abonementService;

    @Override
    public ResponseEntity<ListResponse<AbonementResponse>> getOwnedAbonements() {
        List<Abonement> abonements = (List<Abonement>) abonementService.findAllOwned(Collections.emptyMap());
        return ResponseEntity.ok(new ListResponse<>(abonements.stream().map(AbonementResponse::new).toList()));
    }

    @Override
    public ResponseEntity<ListResponse<AbonementUsageResponse>> getSubscribedAbonements() {
        Collection<AbonementUsage> abonementsUsages = abonementService.findAllSubscribed(Collections.emptyMap());
        return ResponseEntity.ok(new ListResponse<>(abonementsUsages.stream().map(AbonementUsageResponse::new).toList()));
    }

    @Override
    public ResponseEntity<ListResponse<User>> getSubscribers() {
        return null;
    }
}
