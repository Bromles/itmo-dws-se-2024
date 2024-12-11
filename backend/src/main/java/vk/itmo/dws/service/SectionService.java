package vk.itmo.dws.service;

import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import vk.itmo.dws.dto.request.section.SectionCreateRequest;
import vk.itmo.dws.dto.request.section.SectionUpdateRequest;
import vk.itmo.dws.entity.Section;
import vk.itmo.dws.entity.User;
import vk.itmo.dws.repository.SectionRepository;

import java.util.Collection;
import java.util.Map;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class SectionService implements vk.itmo.dws.contracts.SectionService {
    private final SectionRepository sectionRepository;
    protected ModelMapper mapper = new ModelMapper();

    @Override
    public Collection<Section> findAll(Map<String, String> filter) {
        var t = SecurityContextHolder.getContext().getAuthentication().isAuthenticated();
        return sectionRepository.findAll();
    }

    @Override
    public Optional<Section> findById(Long id) {
        return sectionRepository.findById(id);
    }

    @Override
    public Section createSection(SectionCreateRequest sectionData) {
        Section section = mapper.map(sectionData, Section.class);
        sectionRepository.save(section);
        return section;
    }

    @Override
    public Section updateSection(Section section, SectionUpdateRequest sectionData) {
        //section.setTitle(sectionData.getTitle());
        return sectionRepository.save(section);
    }

    @Override
    public void deleteSection(Section section) {

    }
}
