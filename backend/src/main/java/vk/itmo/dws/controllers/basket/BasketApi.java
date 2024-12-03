package vk.itmo.dws.controllers.basket;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import vk.itmo.dws.dto.request.basket.AddToBasketRequest;
import vk.itmo.dws.dto.request.basket.RemoveFromBasketRequest;
import vk.itmo.dws.dto.response.basket.BasketResponse;

@Tag(name = "Section API", description = "API for acquiring transactions")
public interface BasketApi {

    @Operation(summary = "Get basket")
    @GetMapping("/")
    public ResponseEntity<BasketResponse> getBasket();
    @Operation(summary = "Add to basket")
    @PostMapping("/add")
    public ResponseEntity<BasketResponse> addToBasket(@Valid @RequestBody AddToBasketRequest merchantCreateRequestDto);

    @Operation(summary = "Remove from basket")
    @PostMapping("/remove")
    public ResponseEntity<BasketResponse> removeFromBasket(@Valid @RequestBody RemoveFromBasketRequest merchantCreateRequestDto);



}
