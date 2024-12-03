package vk.itmo.dws.controllers.section;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.apache.commons.lang3.stream.IntStreams;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import vk.itmo.dws.contracts.SectionService;
import vk.itmo.dws.controllers.BaseController;
import vk.itmo.dws.controllers.payment.PaymentApi;
import vk.itmo.dws.dto.payment.MerchantCreateRequestDto;
import vk.itmo.dws.dto.payment.OperationDto;
import vk.itmo.dws.dto.request.section.SectionCreateRequest;
import vk.itmo.dws.dto.request.section.SectionUpdateRequest;
import vk.itmo.dws.dto.response.ListResponse;
import vk.itmo.dws.dto.response.section.ingredient.SectionShortResponse;
import vk.itmo.dws.entity.Section;
import vk.itmo.dws.exception.NotFoundEntityException;

import java.time.LocalDateTime;
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
    public ResponseEntity<SectionShortResponse> createSection(@Valid @RequestBody SectionCreateRequest request){
        Section result = sectionService.createSection(request);
        return ResponseEntity.ok(mapper.map(result, SectionShortResponse.class));
    }

    @GetMapping("/{sectionId}")
    public ResponseEntity<SectionShortResponse> getSection(
            @PathVariable Long sectionId
    ) {
        Section ingredient = sectionService.findById(sectionId).orElseThrow();

        return ResponseEntity.ok(mapper.map(ingredient, SectionShortResponse.class));
    }

    @GetMapping()
    public ResponseEntity<ListResponse<SectionShortResponse>> getAllSections(
            @RequestParam Map<String, String> filter,
            HttpServletRequest request
    ) {

        List<SectionShortResponse> ingredients;
        Collection<Section> ingredientList = sectionService.findAll(filter);
        if (ingredientList != null) {
            ingredients = ingredientList.stream()
                    .map((Section section) -> new SectionShortResponse(section))
                    .toList();
        } else {
            ingredients = Collections.emptyList();
        }

        return ResponseEntity.ok(new ListResponse<>(ingredients));
    }


}
