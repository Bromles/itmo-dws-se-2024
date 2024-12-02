package vk.itmo.dws.contracts;


import vk.itmo.dws.dto.request.section.SectionCreateRequest;
import vk.itmo.dws.dto.request.section.SectionUpdateRequest;
import vk.itmo.dws.entity.Section;

import java.util.Collection;
import java.util.Map;
import java.util.Optional;

public interface SectionService extends SearchService<Section> {
    Collection<Section> findAll(Map<String, String> filter);

    Optional<Section> findById(Long id);

    Section createSection(SectionCreateRequest taskData);

    Section updateSection(Section task, SectionUpdateRequest taskData);

    void deleteSection(Section task);
}
