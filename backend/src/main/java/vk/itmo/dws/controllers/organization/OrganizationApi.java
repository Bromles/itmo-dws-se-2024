package vk.itmo.dws.controllers.organization;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import vk.itmo.dws.dto.request.basket.AddToBasketRequest;
import vk.itmo.dws.dto.request.basket.RemoveFromBasketRequest;
import vk.itmo.dws.dto.response.ListResponse;
import vk.itmo.dws.dto.response.basket.BasketResponse;
import vk.itmo.dws.dto.response.users.UserResponse;

import java.util.Map;

@Tag(name = "Organization API", description = "API for organization")
public interface OrganizationApi {

    @Operation(summary = "Get clients")
    @GetMapping("/clients")
    public ResponseEntity<ListResponse<UserResponse>> getClients(@RequestParam Map<String, String> filter);
}
