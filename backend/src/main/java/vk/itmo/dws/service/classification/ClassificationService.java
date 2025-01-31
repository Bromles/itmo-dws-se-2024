package vk.itmo.dws.service.classification;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import vk.itmo.dws.dto.request.classifications.OptionUpdateRequest;
import vk.itmo.dws.entity.Classification;
import vk.itmo.dws.entity.Option;
import vk.itmo.dws.enums.ComparisonOperator;
import vk.itmo.dws.repository.ClassificationRepository;
import vk.itmo.dws.repository.OptionRepository;
import vk.itmo.dws.service.SectionService;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ClassificationService {
    private final OptionRepository optionRepository;
    private final ClassificationRepository repository;
    private final SectionService sectionService;

    public Classification createClassification(String name, Long parentId) {
        Classification classification = new Classification();
        classification.setName(name);

        if (parentId != null) {
            Classification parent = repository.findById(parentId)
                    .orElseThrow(() -> new IllegalArgumentException("Parent not found"));
            classification.setParent(parent);
            parent.getChildren().add(classification);
        }

        return repository.save(classification);
    }

    public void addOptionToClassification(Long classificationId, String key, String value, String operator) {
        Classification classification = repository.findById(classificationId)
                .orElseThrow(() -> new IllegalArgumentException("Classification not found"));

        Option option = new Option();
        option.setKey(key);
        option.setValue(value);
        option.setClassification(classification);
        option.setOperator(operator != null ? ComparisonOperator.valueOf(operator) : ComparisonOperator.EQUALS);

        classification.getOptions().add(option);
        repository.save(classification);
    }

    public List<Classification> getAllClassifications() {
        return repository.findAll();
    }

    public Classification getClassificationById(Long id) {
        return repository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Classification not found"));
    }

    public void assignClassificationToActivity(Long classificationId, Long classId) {
        Classification classification = getClassificationById(classificationId);
        sectionService.addClassification(classId, classification);
    }

    public Option editOption(Long optionId, OptionUpdateRequest optionUpdateRequest) {
        Option option = optionRepository.findById(optionId)
                .orElseThrow(() -> new IllegalArgumentException("Option not found"));
        option.setKey(optionUpdateRequest.getKey());
        option.setValue(optionUpdateRequest.getValue());
        option.setOperator(ComparisonOperator.valueOf(optionUpdateRequest.getOperator().toUpperCase()));
        optionRepository.save(option);
        return option;
    }
}
