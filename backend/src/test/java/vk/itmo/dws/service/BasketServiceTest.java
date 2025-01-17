package vk.itmo.dws.service;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import vk.itmo.dws.entity.Basket;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

class BasketServiceTest {

    @Mock
    private BasketService basketService;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void findAllReturnsAllBaskets() {
        Map<String, String> filter = new HashMap<>();
        Collection<Basket> baskets = Arrays.asList(new Basket(), new Basket());
        when(basketService.findAll(filter)).thenReturn(baskets);

        Collection<Basket> result = basketService.findAll(filter);

        assertEquals(2, result.size());
        verify(basketService, times(1)).findAll(filter);
    }

    @Test
    void findByIdReturnsBasketWhenFound() {
        Long id = 1L;
        Basket basket = new Basket();
        when(basketService.findById(id)).thenReturn(Optional.of(basket));

        Optional<Basket> result = basketService.findById(id);

        assertTrue(result.isPresent());
        assertEquals(basket, result.get());
        verify(basketService, times(1)).findById(id);
    }

    @Test
    void findByIdReturnsEmptyWhenNotFound() {
        Long id = 1L;
        when(basketService.findById(id)).thenReturn(Optional.empty());

        Optional<Basket> result = basketService.findById(id);

        assertFalse(result.isPresent());
        verify(basketService, times(1)).findById(id);
    }

    @Test
    void addToBasketAddsBasket() {
        Long sectionId = 1L;
        Basket basket = new Basket();
        when(basketService.addToBasket(sectionId)).thenReturn(basket);

        Basket result = basketService.addToBasket(sectionId);

        assertEquals(basket, result);
        verify(basketService, times(1)).addToBasket(sectionId);
    }

    @Test
    void removeFromBasketRemovesBasket() {
        Long bookingId = 1L;
        Basket basket = new Basket();
        when(basketService.removeFromBasket(bookingId)).thenReturn(basket);

        Basket result = basketService.removeFromBasket(bookingId);

        assertEquals(basket, result);
        verify(basketService, times(1)).removeFromBasket(bookingId);
    }

    @Test
    void payAllBasketPaysAllBaskets() {
        doNothing().when(basketService).payAllBasket();

        basketService.payAllBasket();

        verify(basketService, times(1)).payAllBasket();
    }
}
