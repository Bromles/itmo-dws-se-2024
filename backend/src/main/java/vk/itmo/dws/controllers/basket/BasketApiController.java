package vk.itmo.dws.controllers.basket;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import vk.itmo.dws.contracts.BasketService;
import vk.itmo.dws.contracts.SectionService;
import vk.itmo.dws.controllers.BaseController;
import vk.itmo.dws.dto.request.basket.AddToBasketRequest;
import vk.itmo.dws.dto.request.basket.RemoveFromBasketRequest;
import vk.itmo.dws.dto.request.section.SectionCreateRequest;
import vk.itmo.dws.dto.response.ListResponse;
import vk.itmo.dws.dto.response.basket.BasketResponse;
import vk.itmo.dws.dto.response.section.ingredient.SectionShortResponse;
import vk.itmo.dws.entity.Basket;
import vk.itmo.dws.entity.Section;

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
@RequestMapping("/api/v1/basket")
@AllArgsConstructor
public class BasketApiController extends BaseController  implements BasketApi {

    private final Logger logger = Logger.getLogger(this.getClass().getName());
    private final BasketService basketService;


    @Override
    public ResponseEntity<BasketResponse> addToBasket(AddToBasketRequest addToBasketRequest) {
        Basket basket = basketService.addToBasket(addToBasketRequest.getSectionId());
        return new ResponseEntity<>(mapper.map(basket, BasketResponse.class), HttpStatus.OK);
    }

    @Override
    public ResponseEntity<BasketResponse>  removeFromBasket(RemoveFromBasketRequest removeFromBasketRequest) {
        Basket basket = basketService.removeFromBasket(removeFromBasketRequest);
        return new ResponseEntity<>(mapper.map(basket, BasketResponse.class), HttpStatus.OK);
    }
}
