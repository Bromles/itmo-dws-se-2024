package vk.itmo.dws.controllers.section;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import vk.itmo.dws.dto.request.section.SectionCreateRequest;
import vk.itmo.dws.dto.request.section.SectionUpdateRequest;
import vk.itmo.dws.dto.response.section.SectionShortResponse;

import java.util.List;

@Tag(name = "Section API", description = "API for acquiring transactions")
public interface SectionApi {

    @Operation(summary = "Get all sections")
    @GetMapping("/sections")
    public List<SectionShortResponse> getAllSections();

    @Operation(summary = "Create new section")
    @PostMapping("/sections")
    public void createSection(@Valid @RequestBody SectionCreateRequest merchantCreateRequestDto);

    @Operation(summary = "Update section")
    @PutMapping("/sections")
    public void updateSection(@Valid @RequestBody SectionUpdateRequest merchantCreateRequestDto);



}
