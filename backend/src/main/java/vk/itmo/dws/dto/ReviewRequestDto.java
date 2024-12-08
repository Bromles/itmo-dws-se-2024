package vk.itmo.dws.dto;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Builder;
import vk.itmo.dws.entity.EntityType;

@Builder
public record ReviewRequestDto(
        @NotNull
        EntityType entityType,
        @NotNull
        Long entityId,
        @NotBlank
        String userId,
        @NotBlank
        String content,
        @Min(1) @Max(5)
        int rating) {
}
