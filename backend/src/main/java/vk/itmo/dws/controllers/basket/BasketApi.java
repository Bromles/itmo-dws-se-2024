package vk.itmo.dws.controllers.basket;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import org.hibernate.Remove;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import vk.itmo.dws.dto.request.basket.AddToBasketRequest;
import vk.itmo.dws.dto.request.basket.RemoveFromBasketRequest;
import vk.itmo.dws.dto.request.section.SectionCreateRequest;
import vk.itmo.dws.dto.request.section.SectionUpdateRequest;
import vk.itmo.dws.dto.response.basket.BasketResponse;
import vk.itmo.dws.dto.response.section.ingredient.SectionShortResponse;

import java.util.List;

@Tag(name = "Section API", description = "API for acquiring transactions")
public interface BasketApi {

    @Operation(summary = "Add to basket")
    @PostMapping("/add")
    public ResponseEntity<BasketResponse>  addToBasket(@Valid @RequestBody AddToBasketRequest merchantCreateRequestDto);

    @Operation(summary = "Remove from basket")
    @PutMapping("/remove")
    public ResponseEntity<BasketResponse> removeFromBasket(@Valid @RequestBody RemoveFromBasketRequest merchantCreateRequestDto);



}
