package vk.itmo.dws.controllers.basket;

import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import vk.itmo.dws.contracts.BasketService;
import vk.itmo.dws.controllers.BaseController;
import vk.itmo.dws.dto.request.basket.AddToBasketRequest;
import vk.itmo.dws.dto.request.basket.RemoveFromBasketRequest;
import vk.itmo.dws.dto.response.basket.BasketResponse;
import vk.itmo.dws.entity.Basket;
import vk.itmo.dws.service.SecurityWorkspace;

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
    public ResponseEntity<BasketResponse> getBasket() {
        Basket basket = basketService.findByUserId( SecurityWorkspace.getAuthUserId()).orElseThrow();
        return new ResponseEntity<>(new BasketResponse(basket), HttpStatus.OK);
    }

    @Override
    public ResponseEntity<BasketResponse> addToBasket(AddToBasketRequest addToBasketRequest) {
        Basket basket = basketService.addToBasket(addToBasketRequest.getClassId());
        return new ResponseEntity<>(mapper.map(basket, BasketResponse.class), HttpStatus.OK);
    }

    @Override
    public ResponseEntity<BasketResponse>  removeFromBasket(RemoveFromBasketRequest removeFromBasketRequest) {
        Basket basket = basketService.removeFromBasket(removeFromBasketRequest.getBookingId());
        return new ResponseEntity<>(mapper.map(basket, BasketResponse.class), HttpStatus.OK);
    }

    @Override
    public ResponseEntity<BasketResponse> payAllBasket() {
        try {
            basketService.payAllBasket();
        }catch (Exception e){
        }
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
