package vk.itmo.dws.service;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import vk.itmo.dws.converter.ReviewConverter;
import vk.itmo.dws.dto.ReviewRequestDto;
import vk.itmo.dws.dto.ReviewResponseDto;
import vk.itmo.dws.entity.EntityType;
import vk.itmo.dws.entity.Review;
import vk.itmo.dws.exception.NotFoundEntityException;
import vk.itmo.dws.repository.ReviewRepository;
import vk.itmo.dws.service.review.ReviewService;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

class ReviewServiceTest {

    @Mock
    private ReviewRepository repository;

    @Mock
    private ReviewConverter converter;

    @InjectMocks
    private ReviewService reviewService;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void getReviewByIdReturnsReviewWhenFound() {
        Long id = 1L;
        Review review = new Review();
        ReviewResponseDto responseDto = new ReviewResponseDto(1L, EntityType.PRODUCT, 1L, "title", "comment", 5, LocalDateTime.now());
        when(repository.findById(id)).thenReturn(Optional.of(review));
        when(converter.convert(review)).thenReturn(responseDto);

        ReviewResponseDto result = reviewService.getReviewById(id);

        assertEquals(responseDto, result);
        verify(repository, times(1)).findById(id);
        verify(converter, times(1)).convert(review);
    }

    @Test
    void getReviewByIdThrowsExceptionWhenNotFound() {
        Long id = 1L;
        when(repository.findById(id)).thenReturn(Optional.empty());

        assertThrows(NotFoundEntityException.class, () -> reviewService.getReviewById(id));
        verify(repository, times(1)).findById(id);
    }

    @Test
    void addReviewAddsReviewWhenValid() {
        ReviewRequestDto requestDto = new ReviewRequestDto(EntityType.PRODUCT, 1L, "title", "comment", 5);
        Review review = new Review();
        ReviewResponseDto responseDto = new ReviewResponseDto(1L, EntityType.PRODUCT, 1L, "title", "comment", 5, LocalDateTime.now());
        when(converter.convert(requestDto)).thenReturn(review);
        when(repository.save(review)).thenReturn(review);
        when(converter.convert(review)).thenReturn(responseDto);

        ReviewResponseDto result = reviewService.addReview(requestDto);

        assertEquals(responseDto, result);
        verify(converter, times(1)).convert(requestDto);
        verify(repository, times(1)).save(review);
        verify(converter, times(1)).convert(review);
    }

    @Test
    void addReviewThrowsExceptionWhenRatingInvalid() {
        ReviewRequestDto requestDto = new ReviewRequestDto(EntityType.PRODUCT, 1L, "title", "comment", 0);

        assertThrows(IllegalArgumentException.class, () -> reviewService.addReview(requestDto));
    }

    @Test
    void getReviewsReturnsReviews() {
        String entityType = "PRODUCT";
        Long entityId = 1L;
        List<Review> reviews = List.of(new Review(), new Review());
        List<ReviewResponseDto> responseDtos = List.of(
                new ReviewResponseDto(1L, EntityType.PRODUCT, 1L, "title", "comment", 5, LocalDateTime.now()),
                new ReviewResponseDto(2L, EntityType.PRODUCT, 1L, "title", "comment", 4, LocalDateTime.now())
        );
        when(repository.findByEntityTypeAndEntityId(EntityType.fromString(entityType), entityId)).thenReturn(reviews);
        when(converter.convert(reviews.get(0))).thenReturn(responseDtos.get(0));
        when(converter.convert(reviews.get(1))).thenReturn(responseDtos.get(1));

        List<ReviewResponseDto> result = reviewService.getReviews(entityType, entityId);

        assertEquals(responseDtos, result);
        verify(repository, times(1)).findByEntityTypeAndEntityId(EntityType.fromString(entityType), entityId);
        verify(converter, times(1)).convert(reviews.get(0));
        verify(converter, times(1)).convert(reviews.get(1));
    }

    @Test
    void updateReviewUpdatesReviewWhenFound() {
        Long id = 1L;
        ReviewRequestDto requestDto = new ReviewRequestDto(EntityType.PRODUCT, 1L, "title", "comment", 5);
        Review review = new Review();
        ReviewResponseDto responseDto = new ReviewResponseDto(1L, EntityType.PRODUCT, 1L, "title", "comment", 5, LocalDateTime.now());
        when(repository.existsById(id)).thenReturn(true);
        when(converter.convert(requestDto)).thenReturn(review);
        when(repository.save(review)).thenReturn(review);
        when(converter.convert(review)).thenReturn(responseDto);

        ReviewResponseDto result = reviewService.updateReview(id, requestDto);

        assertEquals(responseDto, result);
        verify(repository, times(1)).existsById(id);
        verify(converter, times(1)).convert(requestDto);
        verify(repository, times(1)).save(review);
        verify(converter, times(1)).convert(review);
    }

    @Test
    void updateReviewThrowsExceptionWhenNotFound() {
        Long id = 1L;
        ReviewRequestDto requestDto = new ReviewRequestDto(EntityType.PRODUCT, 1L, "title", "comment", 5);
        when(repository.existsById(id)).thenReturn(false);

        assertThrows(NotFoundEntityException.class, () -> reviewService.updateReview(id, requestDto));
        verify(repository, times(1)).existsById(id);
    }

    @Test
    void deleteReviewDeletesReviewWhenFound() {
        Long id = 1L;
        when(repository.existsById(id)).thenReturn(true);
        doNothing().when(repository).deleteById(id);

        reviewService.deleteReview(id);

        verify(repository, times(1)).existsById(id);
        verify(repository, times(1)).deleteById(id);
    }

    @Test
    void deleteReviewThrowsExceptionWhenNotFound() {
        Long id = 1L;
        when(repository.existsById(id)).thenReturn(false);

        assertThrows(NotFoundEntityException.class, () -> reviewService.deleteReview(id));
        verify(repository, times(1)).existsById(id);
    }
}