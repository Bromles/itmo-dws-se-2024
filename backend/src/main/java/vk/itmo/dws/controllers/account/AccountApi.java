package vk.itmo.dws.controllers.account;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.RequestBody;
import vk.itmo.dws.dto.account.UserResponseDto;
import vk.itmo.dws.dto.account.UserSetEmailRequestDto;
import vk.itmo.dws.dto.account.UserSetPasswordRequestDto;
import vk.itmo.dws.dto.account.UserSetPhoneRequestDto;
import vk.itmo.dws.dto.response.ListResponse;
import vk.itmo.dws.dto.response.classes.ClassResponse;

@Tag(name = "Account API", description = "API for account management")
public interface AccountApi {

    @Operation(summary = "Get user information from keycloak")
    @GetMapping("/account")
    public UserResponseDto getUserInfo();

    @Operation(summary = "Set user phone number")
    @PatchMapping("/phone")
    public void setPhoneNumber(@Valid @RequestBody UserSetPhoneRequestDto userSetPhoneRequestDto);

    @Operation(summary = "Set user email")
    @PatchMapping("/email")
    public void setEmail(@Valid @RequestBody UserSetEmailRequestDto userSetEmailRequestDto);

    @Operation(summary = "Set user password")
    @PatchMapping("/password")
    public void setPassword(@Valid @RequestBody UserSetPasswordRequestDto userSetPasswordRequestDto);

    @Operation(summary = "Get user sections")
    @GetMapping("/sections")
    public ResponseEntity<ListResponse<ClassResponse>> getSections();

}
