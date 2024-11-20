package vk.itmo.dws.service.review;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import vk.itmo.dws.converter.ReviewConverter;
import vk.itmo.dws.dto.ReviewRequestDto;
import vk.itmo.dws.dto.ReviewResponseDto;
import vk.itmo.dws.entity.EntityType;
import vk.itmo.dws.entity.Review;
import vk.itmo.dws.exception.NotFoundEntityException;
import vk.itmo.dws.repository.ReviewRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ReviewService {
    private final ReviewRepository repository;
    private final ReviewConverter converter;

    public ReviewResponseDto getReviewById(Long id) {
        Review review = repository.findById(id).orElse(null);
        if (review == null) {
            throw new NotFoundEntityException(String.format("Review with id = %d is not found", id));
        }

        return converter.convert(review);
    }

    @Transactional
    public ReviewResponseDto addReview(ReviewRequestDto dto) {
        if (dto.rating() < 1 || dto.rating() > 5) {
            throw new IllegalArgumentException("Rating must be between 1 and 5.");
        }

        Review review = converter.convert(dto);
        review = repository.save(review);

        return converter.convert(review);
    }

    public List<ReviewResponseDto> getReviews(String entityType, Long entityId) {
        List<Review> reviews = repository.findByEntityTypeAndEntityId(EntityType.fromString(entityType), entityId);

        return reviews.stream()
                .map(converter::convert)
                .toList();
    }

    @Transactional
    public ReviewResponseDto updateReview(Long id, ReviewRequestDto reviewRequestDto) {
        if (!repository.existsById(id)) {
            throw new NotFoundEntityException(String.format("Review with id = %d is not found", id));
        }
        Review review = converter.convert(reviewRequestDto);
        review.setId(id);
        repository.save(review);

        return converter.convert(review);
    }

    @Transactional
    public void deleteReview(Long id) {
        if (!repository.existsById(id)) {
            throw new NotFoundEntityException(String.format("Review with id = %d is not found", id));
        }
        repository.deleteById(id);
    }
}
