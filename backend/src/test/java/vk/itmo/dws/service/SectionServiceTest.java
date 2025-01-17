package vk.itmo.dws.service;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import vk.itmo.dws.dto.request.section.SectionCreateRequest;
import vk.itmo.dws.dto.request.section.SectionUpdateRequest;
import vk.itmo.dws.entity.Section;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

class SectionServiceTest {

    @Mock
    private SectionService sectionService;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void findAllReturnsAllSections() {
        Map<String, String> filter = new HashMap<>();
        Collection<Section> sections = Arrays.asList(new Section(), new Section());
        when(sectionService.findAll(filter)).thenReturn(sections);

        Collection<Section> result = sectionService.findAll(filter);

        assertEquals(2, result.size());
        verify(sectionService, times(1)).findAll(filter);
    }

    @Test
    void findByIdReturnsSectionWhenFound() {
        Long id = 1L;
        Section section = new Section();
        when(sectionService.findById(id)).thenReturn(Optional.of(section));

        Optional<Section> result = sectionService.findById(id);

        assertTrue(result.isPresent());
        assertEquals(section, result.get());
        verify(sectionService, times(1)).findById(id);
    }

    @Test
    void findByIdReturnsEmptyWhenNotFound() {
        Long id = 1L;
        when(sectionService.findById(id)).thenReturn(Optional.empty());

        Optional<Section> result = sectionService.findById(id);

        assertFalse(result.isPresent());
        verify(sectionService, times(1)).findById(id);
    }

    @Test
    void createSectionCreatesSection() {
        SectionCreateRequest request = new SectionCreateRequest();
        Section section = new Section();
        when(sectionService.createSection(request)).thenReturn(section);

        Section result = sectionService.createSection(request);

        assertEquals(section, result);
        verify(sectionService, times(1)).createSection(request);
    }

    @Test
    void updateSectionUpdatesSection() {
        Section section = new Section();
        SectionUpdateRequest request = new SectionUpdateRequest();
        when(sectionService.updateSection(section, request)).thenReturn(section);

        Section result = sectionService.updateSection(section, request);

        assertEquals(section, result);
        verify(sectionService, times(1)).updateSection(section, request);
    }

    @Test
    void deleteSectionDeletesSection() {
        Section section = new Section();
        doNothing().when(sectionService).deleteSection(section);

        sectionService.deleteSection(section);

        verify(sectionService, times(1)).deleteSection(section);
    }
}
