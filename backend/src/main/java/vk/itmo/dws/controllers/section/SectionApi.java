package vk.itmo.dws.controllers.section;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import vk.itmo.dws.dto.request.classes.ClassCreateRequest;
import vk.itmo.dws.dto.request.section.SectionCreateRequest;
import vk.itmo.dws.dto.request.section.SectionUpdateRequest;
import vk.itmo.dws.dto.response.ListResponse;
import vk.itmo.dws.dto.response.classes.ClassResponse;
import vk.itmo.dws.dto.response.section.SectionCardResponse;
import vk.itmo.dws.dto.response.section.SectionShortResponse;
import vk.itmo.dws.entity.Class;
import vk.itmo.dws.entity.Section;

import java.util.List;
import java.util.Map;

@Tag(name = "Section API", description = "API for acquiring transactions")
public interface SectionApi {

    @Operation(summary = "Get all sections")
    @GetMapping("")
    public ResponseEntity<ListResponse<SectionCardResponse>> getAllSections(@RequestParam Map<String, String> filter);
    @Operation(summary = "Create new section")
    @PostMapping("")
    public ResponseEntity<SectionShortResponse> createSection(@Valid @RequestBody SectionCreateRequest request);

    @Operation(summary = "Get all sections classes")
    @GetMapping("/{sectionId}/classes")
    public List<SectionShortResponse> getAllSectionsClasses(@PathVariable Long sectionId);

    @Operation(summary = "Create new section class")
    @PostMapping("/{sectionId}/classes")
    public ResponseEntity<ClassResponse>  createSectionClass(@PathVariable Long sectionId, @Valid @RequestBody ClassCreateRequest classCreateRequest);

    @Operation(summary = "Update section class")
    @PutMapping("/{sectionId}/classes/{classId}")
    public ResponseEntity<ClassResponse> updateSectionClass(@PathVariable Long sectionId, @PathVariable Long classId, @Valid @RequestBody SectionUpdateRequest merchantCreateRequestDto);



}
