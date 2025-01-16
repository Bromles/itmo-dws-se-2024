package vk.itmo.dws.controllers.classification;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import vk.itmo.dws.dto.response.ListResponse;
import vk.itmo.dws.dto.response.classificatons.ClassificationsResponse;
import vk.itmo.dws.dto.response.section.SectionCardResponse;
import vk.itmo.dws.entity.Class;
import vk.itmo.dws.entity.Classification;
import vk.itmo.dws.entity.Section;
import vk.itmo.dws.service.classification.ClassificationService;

import java.util.Collection;
import java.util.Collections;
import java.util.List;

@RestController
@RequestMapping("/api/v1/classifications")
@RequiredArgsConstructor
public class ClassificationController {

    private final ClassificationService classificationService;

    @PostMapping
    public Classification createClassification(@RequestParam String name,
                                               @RequestParam(required = false) Long parentId) {
        return classificationService.createClassification(name, parentId);
    }

    @PostMapping("/{id}/options")
    public void addOption(@PathVariable Long id,
                          @RequestParam String key,
                          @RequestParam String value) {
        classificationService.addOptionToClassification(id, key, value);
    }

    @GetMapping("/test")
    public List<Classification> getAllClassifications2() {
        return classificationService.getAllClassifications();
    }


    @GetMapping
    public ResponseEntity<ListResponse<ClassificationsResponse>> getAllClassifications()
    {
        List<ClassificationsResponse> classifications;
        Collection<Classification> classificationsList = classificationService.getAllClassifications();
        if (classificationsList != null) {
            classifications = classificationsList.stream()
                    .map(ClassificationsResponse::new)
                    .toList();
        } else {
            classifications = Collections.emptyList();
        }
        return ResponseEntity.ok(new ListResponse<>(classifications));
    }

    @PostMapping("/{classificationId}/classes/{classId}")
    public void assignClassificationToActivity(@PathVariable Long classificationId,
                                               @PathVariable Long classId) {
        classificationService.assignClassificationToActivity(classificationId, classId);
    }
}
