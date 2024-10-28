package vk.itmo.dws.controllers.abonement;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import vk.itmo.dws.dto.abonement.MerchantCreateRequestDto;
import vk.itmo.dws.dto.abonement.OperationDto;

import java.util.List;

@Tag(name = "Abonement API", description = "API for creating abonements")
public interface AbonementApi {

    @Operation(summary = "Сreating an abonement")
    @PostMapping("/create")
    public AbonementDto createAbonement();

    @Operation(summary = "Get all owned abonements)
    @GetMapping("/all")
    public List<AbonementDto> getAllAbonements();

    @Operation(summary = "Delete abonement")
    @DeleteMapping("/delete")
    public AbonementDto cancelAbonement();

    @Operation(summary = "Buying an abonement")
    @PostMapping("/buy")
    public AbonementDto buyAbonement();


    @Operation(summary = "Cancel abonement")
    @PostMapping("/cancel")
    public AbonementDto cancelAbonement();

}
