package vk.itmo.dws.dto;

import lombok.Builder;
import vk.itmo.dws.entity.EntityType;

import java.time.LocalDateTime;

@Builder
public record ReviewResponseDto(
        Long id,
        EntityType entityType,
        Long entityId,
        String userId,
        String content,
        int rating,
        LocalDateTime createdAt
) {
}
