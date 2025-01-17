package vk.itmo.dws.service;

import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import vk.itmo.dws.contracts.SectionService;
import vk.itmo.dws.dto.request.section.SectionCreateRequest;
import vk.itmo.dws.dto.request.section.SectionUpdateRequest;
import vk.itmo.dws.entity.Class;
import vk.itmo.dws.entity.Section;
import vk.itmo.dws.entity.User;
import vk.itmo.dws.repository.SectionRepository;

import java.util.*;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class OrganizationService implements vk.itmo.dws.contracts.OrganizationService {
    private final SectionService sectionService;


    @Override
    public Collection<User> getClients(Map<String, String> filter) {
        return sectionService.findAllOwned(filter).stream()
                .flatMap(section -> section.getClasses().stream()
                        .flatMap(class1 -> class1.getUsers().stream()))
                .collect(Collectors.toList());
    }

    @Override
    public Optional<Section> findById(Long id) {
        return Optional.empty();
    }

    @Override
    public Collection<Section> findAll(Map<String, String> filter) {
        return null;
    }
}
