package vk.itmo.dws.converter;

import org.junit.jupiter.api.Test;
import vk.itmo.dws.dto.ReviewRequestDto;
import vk.itmo.dws.dto.ReviewResponseDto;
import vk.itmo.dws.entity.EntityType;
import vk.itmo.dws.entity.Review;

import java.time.LocalDateTime;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;

class ReviewConverterTest {

    private final ReviewConverter converter = new ReviewConverter();

    @Test
    void convertReviewRequestDtoToReview() {
        ReviewRequestDto dto = new ReviewRequestDto(EntityType.PRODUCT, 1L, "title", "content", 5);
        Review review = converter.convert(dto);

        assertEquals(dto.entityType(), review.getEntityType());
        assertEquals(dto.entityId(), review.getEntityId());
        assertEquals(dto.userId(), review.getUserId());
        assertEquals(dto.content(), review.getContent());
        assertEquals(dto.rating(), review.getRating());
    }

    @Test
    void convertReviewToReviewResponseDto() {
        Review review = new Review();
        review.setId(1L);
        review.setEntityType(EntityType.PRODUCT);
        review.setEntityId(1L);
        review.setUserId("1");
        review.setContent("content");
        review.setRating(5);
        review.setCreatedAt(LocalDateTime.now());

        ReviewResponseDto dto = converter.convert(review);

        assertEquals(review.getId(), dto.id());
        assertEquals(review.getEntityType(), dto.entityType());
        assertEquals(review.getEntityId(), dto.entityId());
        assertEquals(review.getUserId(), dto.userId());
        assertEquals(review.getContent(), dto.content());
        assertEquals(review.getRating(), dto.rating());
        assertEquals(review.getCreatedAt(), dto.createdAt());
    }

    @Test
    void convertReviewRequestDtoWithNullValues() {
        ReviewRequestDto dto = new ReviewRequestDto(null, null, null, null, 0);
        Review review = converter.convert(dto);

        assertNull(review.getEntityType());
        assertNull(review.getEntityId());
        assertNull(review.getUserId());
        assertNull(review.getContent());
        assertEquals(0, review.getRating());
    }

    @Test
    void convertReviewWithNullValues() {
        Review review = new Review();
        ReviewResponseDto dto = converter.convert(review);

        assertNull(dto.id());
        assertNull(dto.entityType());
        assertNull(dto.entityId());
        assertNull(dto.userId());
        assertNull(dto.content());
        assertEquals(0, dto.rating());
        assertNotNull(dto.createdAt());
    }
}
