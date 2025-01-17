package vk.itmo.dws.converter;

import org.springframework.stereotype.Component;
import vk.itmo.dws.dto.ReviewRequestDto;
import vk.itmo.dws.dto.ReviewResponseDto;
import vk.itmo.dws.entity.Review;

@Component
public class ReviewConverter {
    public Review convert(ReviewRequestDto dto) {
        Review review = new Review();
        review.setEntityType(dto.entityType());
        review.setEntityId(dto.entityId());
       // review.setUserId(dto.userId());
        review.setContent(dto.content());
        review.setRating(dto.rating());
        return review;
    }

    public ReviewResponseDto convert(Review review) {
        return new ReviewResponseDto(
                review.getId(),
                review.getEntityType(),
                review.getEntityId(),
                review.getUserId(),
                review.getContent(),
                review.getRating(),
                review.getCreatedAt()
        );
    }
}
