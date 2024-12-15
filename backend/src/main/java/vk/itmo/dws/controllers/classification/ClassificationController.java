package vk.itmo.dws.controllers.classification;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import vk.itmo.dws.entity.Classification;
import vk.itmo.dws.service.classification.ClassificationService;

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

    @GetMapping
    public List<Classification> getAllClassifications() {
        return classificationService.getAllClassifications();
    }

    @PostMapping("/{classificationId}/classes/{classId}")
    public void assignClassificationToActivity(@PathVariable Long classificationId,
                                               @PathVariable Long classId) {
        classificationService.assignClassificationToActivity(classificationId, classId);
    }
}
