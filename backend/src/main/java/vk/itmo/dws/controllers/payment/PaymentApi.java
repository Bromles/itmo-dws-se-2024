package vk.itmo.dws.controllers.payment;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import vk.itmo.dws.dto.payment.MerchantCreateRequestDto;
import vk.itmo.dws.dto.payment.OperationDto;

import java.util.List;

@Tag(name = "Payment API", description = "API for acquiring transactions")
public interface PaymentApi {

    @Operation(summary = "Сreating a payment")
    @PostMapping("/pay")
    public OperationDto createPayment();

    @Operation(summary = "Get all account cash operations")
    @GetMapping("/clients/operations")
    public List<OperationDto> getAllPayments();

    @Operation(summary = "Create new client account")
    @PostMapping("/clients/account")
    public void createClientAccount();

    @Operation(summary = "Create new merchant account")
    @PostMapping("/merchants/account")
    public void createMerchantAccount(@Valid @RequestBody MerchantCreateRequestDto merchantCreateRequestDto);

    @Operation(summary = "Update merchant account")
    @PutMapping("/merchants/account")
    public void updateMerchantAccount(@Valid @RequestBody MerchantCreateRequestDto merchantCreateRequestDto);



}
