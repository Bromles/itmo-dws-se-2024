package vk.itmo.dws.controllers.section;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;
import vk.itmo.dws.contracts.SectionService;
import vk.itmo.dws.controllers.BaseController;
import vk.itmo.dws.dto.request.section.SectionCreateRequest;
import vk.itmo.dws.dto.response.ListResponse;
import vk.itmo.dws.dto.response.section.SectionCardResponse;
import vk.itmo.dws.dto.response.section.SectionShortResponse;
import vk.itmo.dws.entity.Section;

import java.util.*;
import java.util.logging.Logger;

/**
 * Котроллер для взаимодействия с секциями
 */


@RestController
@CrossOrigin
@RequestMapping("/api/v1/sections")
@AllArgsConstructor
public class SectionApiController  extends BaseController {

    private final Logger logger = Logger.getLogger(this.getClass().getName());
    private final SectionService sectionService;


    @PostMapping
    @PreAuthorize("hasRole('ROLE_EMPLOYEE')")
    public ResponseEntity<SectionShortResponse> createSection(@AuthenticationPrincipal Jwt principal, @Valid @RequestBody SectionCreateRequest request){
        Section result = sectionService.createSection(request);
        return ResponseEntity.ok(mapper.map(result, SectionShortResponse.class));
    }

    @GetMapping("/{sectionId}")
    public ResponseEntity<SectionCardResponse> getSection(
            @PathVariable Long sectionId
    ) {
        Section section = sectionService.findById(sectionId).orElseThrow();

        return ResponseEntity.ok(mapper.map(section, SectionCardResponse.class));
    }

    @GetMapping()
    public ResponseEntity<ListResponse<SectionCardResponse>> getAllSections(
            @AuthenticationPrincipal Jwt principal,
            @RequestParam Map<String, String> filter,
            HttpServletRequest request
    ) {

        List<SectionCardResponse> sections;
        Collection<Section> sectionList = sectionService.findAll(filter);
        if (sectionList != null) {
            sections = sectionList.stream()
                    .map(SectionCardResponse::new)
                    .toList();
        } else {
            sections = Collections.emptyList();
        }

        return ResponseEntity.ok(new ListResponse<>(sections));
    }


}
