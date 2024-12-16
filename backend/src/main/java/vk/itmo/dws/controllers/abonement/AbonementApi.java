package vk.itmo.dws.controllers.abonement;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import vk.itmo.dws.dto.request.abonement.AbonementCreateRequest;
import vk.itmo.dws.dto.response.ListResponse;
import vk.itmo.dws.dto.response.abonement.AbonementResponse;
import vk.itmo.dws.dto.response.abonement.AbonementUsageResponse;
import vk.itmo.dws.entity.Abonement;
import vk.itmo.dws.entity.User;

@Tag(name = "Abonement API", description = "API for abonement management")
public interface AbonementApi {

    @Operation(summary = "Create abonement")
    @PostMapping("")
    public ResponseEntity<AbonementResponse> createAbonement(@RequestBody AbonementCreateRequest abonementData);

    @Operation(summary = "Edit abonement")
    @PutMapping("/{abonementId}")
    public ResponseEntity<AbonementResponse> editAbonement(@PathVariable Long abonementId, @RequestBody AbonementCreateRequest abonementData);

    @Operation(summary = "Delete abonement")
    @DeleteMapping("/{abonementId}")
    public ResponseEntity<AbonementResponse> deleteAbonement(@PathVariable Long abonementId);

    @Operation(summary = "Get abonement")
    @GetMapping("/{abonementId}")
    public ResponseEntity<AbonementResponse> getAbonement(@PathVariable Long abonementId);

    @Operation(summary = "subscribed abonement")
    @PostMapping("/subscribe/{abonementId}")
    public ResponseEntity<AbonementResponse> subscribeAbonement(@PathVariable Long abonementId);

    @Operation(summary = "Get ownedAbonements")
    @GetMapping("/owned")
    public ResponseEntity<ListResponse<AbonementResponse>> getOwnedAbonements();

    @Operation(summary = "Get subscribedAbonements")
    @GetMapping("/subscribed")
    public ResponseEntity<ListResponse<AbonementUsageResponse>> getSubscribedAbonements();

    @Operation(summary = "Get subscribers")
    @GetMapping("/subscribers")
    public ResponseEntity<ListResponse<User>> getSubscribers();
}
