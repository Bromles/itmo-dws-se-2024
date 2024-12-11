package vk.itmo.dws.controllers.organization;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import vk.itmo.dws.contracts.OrganizationService;
import vk.itmo.dws.controllers.BaseController;
import vk.itmo.dws.dto.response.ListResponse;
import vk.itmo.dws.dto.response.users.UserResponse;
import vk.itmo.dws.entity.Section;
import vk.itmo.dws.entity.User;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/**
 * Котроллер для взаимодействия с секциями
 */


@RestController
@CrossOrigin
@RequestMapping("/api/v1/organization")
@AllArgsConstructor
public class OrganizationApiController extends BaseController  implements OrganizationApi {

    private final Logger logger = Logger.getLogger(this.getClass().getName());
    private final OrganizationService organizationService;

    @GetMapping("/clients")
    public ResponseEntity<ListResponse<UserResponse>> getClients(
            @RequestParam Map<String, String> filter) {

        List<UserResponse> clients;
        Collection<User> clientList = organizationService.getClients(filter);
        if (clientList != null) {
            clients = clientList.stream()
                    .map(UserResponse::new)
                    .toList();
        } else {
            clients = Collections.emptyList();
        }

        return ResponseEntity.ok(new ListResponse<>(clients));
    }

}
