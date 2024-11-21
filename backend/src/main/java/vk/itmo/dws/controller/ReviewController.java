package vk.itmo.dws.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import vk.itmo.dws.dto.ReviewRequestDto;
import vk.itmo.dws.dto.ReviewResponseDto;
import vk.itmo.dws.service.review.ReviewService;

import java.util.List;

@RestController
@RequestMapping("/api/v1/reviews")
@RequiredArgsConstructor
public class ReviewController {
    private final ReviewService reviewService;

    @PostMapping
    public ResponseEntity<ReviewResponseDto> addReview(@Validated @RequestBody ReviewRequestDto reviewRequest) {
        return ResponseEntity.ok(reviewService.addReview(reviewRequest));
    }

    @GetMapping("/{id}")
    public ResponseEntity<ReviewResponseDto> getReviewById(@PathVariable Long id) {
        ReviewResponseDto reviewResponse = reviewService.getReviewById(id);
        return ResponseEntity.ok(reviewResponse);
    }

    @PutMapping("/{id}")
    public ResponseEntity<ReviewResponseDto> updateReview(@PathVariable Long id, @RequestBody ReviewRequestDto reviewRequestDto) {
        ReviewResponseDto updatedReview = reviewService.updateReview(id, reviewRequestDto);
        return ResponseEntity.ok(updatedReview);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteReview(@PathVariable Long id) {
        reviewService.deleteReview(id);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/entity/{entityType}/{entityId}")
    public ResponseEntity<List<ReviewResponseDto>> getReviews(
            @PathVariable String entityType,
            @PathVariable Long entityId) {
        List<ReviewResponseDto> reviews = reviewService.getReviews(entityType, entityId);
        return ResponseEntity.ok(reviews);
    }
}
