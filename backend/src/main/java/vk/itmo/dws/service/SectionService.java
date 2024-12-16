package vk.itmo.dws.service;

import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import vk.itmo.dws.dto.request.classes.ClassUpdateRequest;
import vk.itmo.dws.dto.request.section.SectionCreateRequest;
import vk.itmo.dws.dto.request.section.SectionUpdateRequest;
import vk.itmo.dws.entity.Class;
import vk.itmo.dws.entity.Classification;
import vk.itmo.dws.entity.Section;
import vk.itmo.dws.entity.User;
import vk.itmo.dws.repository.ClassesRepository;
import vk.itmo.dws.repository.SectionRepository;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class SectionService implements vk.itmo.dws.contracts.SectionService {
    private final SectionRepository sectionRepository;
    private final ClassesRepository classesRepository;
    protected ModelMapper mapper = new ModelMapper();
    private final UserService userService;

    @Override
    public Collection<Section> findAll(Map<String, String> filter) {
        return sectionRepository.findAll();
    }

    public Collection<Section> findAllOwned(Map<String, String> filter) {
        return sectionRepository.findByUserId(SecurityWorkspace.getAuthUserId());
    }

    public List<Class> sectionClasses(Long sectionId){
        Section section = sectionRepository.findById(sectionId).orElseThrow();
        return section.getClasses();
    }

    public Class createClass(Long sectionId, String title) {
        Class newClass = new Class();
        newClass.setSection(sectionRepository.findById(sectionId).get());
        newClass.setTitle(title);
        classesRepository.save(newClass);
        return newClass;
    }

    public Class editClass(Long classId, ClassUpdateRequest classUpdateRequest) {
        Class newClass = classesRepository.findById(classId).orElseThrow();
        newClass.setTitle(classUpdateRequest.getTitle());
        classesRepository.save(newClass);
        return newClass;
    }

    public void deleteClass(Long classId) {
        Class newClass = classesRepository.findById(classId).orElseThrow();
        classesRepository.delete(newClass);
    }

    public void addClassification(Long classId, Classification classification) {
        Class activity = classesRepository.findById(classId).orElseThrow();
        activity.getClassifications().add(classification);
        classesRepository.save(activity);
    }

    @Override
    public Optional<Section> findById(Long id) {
        return sectionRepository.findById(id);
    }

    @Override
    public Section createSection(SectionCreateRequest sectionData) {
        Optional<User> userOptional = userService.findById(SecurityWorkspace.getAuthUserId());
        User user;
        user = userOptional.orElseGet(() -> userService.editUser(SecurityWorkspace.getAuthUser()));

        sectionData.setPrice(sectionData.getPrice()*100);
        Section section = mapper.map(sectionData, Section.class);
        section.setUserId(user.getId());
        sectionRepository.save(section);
        return section;
    }

    @Override
    public Section updateSection(Section section, SectionUpdateRequest sectionData) {
        //section.setTitle(sectionData.getTitle());
        return sectionRepository.save(section);
    }

    @Override
    public void deleteSection(Long sectionId) {
        sectionRepository.deleteById(sectionId);
    }

}
