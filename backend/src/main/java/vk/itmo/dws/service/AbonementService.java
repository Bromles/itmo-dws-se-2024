package vk.itmo.dws.service;

import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import vk.itmo.dws.contracts.CalendarService;
import vk.itmo.dws.dto.calendar.CalendarRecordDto;
import vk.itmo.dws.dto.request.abonement.AbonementCreateRequest;
import vk.itmo.dws.entity.*;
import vk.itmo.dws.entity.Class;
import vk.itmo.dws.enums.BookingStateEnum;
import vk.itmo.dws.exception.ClassAlreadyBoughtException;
import vk.itmo.dws.repository.*;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.util.*;

@Service
@RequiredArgsConstructor
public class AbonementService implements vk.itmo.dws.contracts.AbonementService {
    private final UserService userService;
    private final AbonementRepository abonementRepository;
    private final AbonemenUsageRepository abonementUsageRepository;
    private final CalendarService calendarService;
    private final SectionRepository sectionRepository;
    protected ModelMapper mapper = new ModelMapper();


    @Override
    public Collection<Abonement> findAllOwned(Map<String, String> filter) {
        return abonementRepository.findByUserId(SecurityWorkspace.getAuthUserId()).stream().toList();
    }

    public Abonement create(AbonementCreateRequest abonementData) {
        Optional<User> userOptional = userService.findById(SecurityWorkspace.getAuthUserId());
        User user;
        user = userOptional.orElseGet(() -> userService.editUser(SecurityWorkspace.getAuthUser()));

        Section section = sectionRepository.findById(abonementData.getSectionId()).orElseThrow();
        if(!section.getUserId().equals(SecurityWorkspace.getAuthUserId())){
            throw new IllegalArgumentException("You don't have access to this section");
        }
        Abonement abonement = mapper.map(abonementData, Abonement.class);
        return abonementRepository.save(abonement);
    }

    public Abonement edit(Long abonementId, AbonementCreateRequest abonementData) {
        Abonement abonement = abonementRepository.findById(abonementId)
                .orElseThrow(() -> new IllegalArgumentException("Abonement not found"));

        Section section = abonement.getSection();

        if (!section.getUserId().equals(SecurityWorkspace.getAuthUserId())) {
            throw new IllegalArgumentException("You don't have access to edit this section");
        }

        abonement.setTitle(abonementData.getTitle());
        abonement.setDuration(abonementData.getDuration());
        abonement.setClassesCount(abonementData.getClassesCount());
        abonementRepository.save(abonement);
        return abonement;
    }


    public Abonement delete(Long abonementId) {
        Abonement abonement = abonementRepository.findById(abonementId)
                .orElseThrow(() -> new IllegalArgumentException("Abonement not found"));
        abonementRepository.delete(abonement);
        return abonement;
    }


    public Collection<User> findAllSubscribers(Map<String, String> filter) {
        return null;
    }



    public Collection<AbonementUsage> findAllSubscribed(Map<String, String> filter) {
//        return abonementUsageRepository.findByUserId("1L");//TODO get user id
        return new ArrayList<>();
    }

    public boolean isAbonementActive(AbonementUsage abonementUsage) {
        return abonementUsage.getDisableDate().isAfter(LocalDateTime.now());
    }

    public void increaseClassesPassed(AbonementUsage abonementUsage) {
        abonementUsage.setClassesPassed(abonementUsage.getClassesPassed() + 1);
        abonementUsageRepository.save(abonementUsage);
    }

    public Abonement subscribeToAbonement(Long abonementId) {
        Abonement abonement = abonementRepository.findById(abonementId).orElseThrow();
        Optional<AbonementUsage> usage = abonementUsageRepository.findByIdAndUserId(abonementId, SecurityWorkspace.getAuthUserId());
        if(usage.isPresent()){
            throw new ClassAlreadyBoughtException("You already bought this abonement");
        }

        AbonementUsage abonementUsage = new AbonementUsage();
        abonementUsage.setAbonement(abonement);
        abonementUsage.setClassesPassed(0L);
        abonementUsage.setActivationDate(LocalDateTime.now());
        assert abonement.getDuration() != null;
        abonementUsage.setDisableDate(LocalDateTime.now().plus(abonement.getDuration()));
        abonementUsageRepository.save(abonementUsage);

        CalendarRecordDto calendarRecordDto = new CalendarRecordDto(abonement.getTitle(), LocalDateTime.now(), abonementUsage.getDisableDate());
        calendarService.createRecord(calendarRecordDto);

        return abonement;
    }

    public void unsubscribeAbonement(AbonementUsage abonementUsage) {
        abonementUsage.setUserId(null);
        abonementUsageRepository.save(abonementUsage);
    }

    @Override
    public Optional<Abonement> findById(Long id) {
        return abonementRepository.findById(id);
    }

    @Override
    public Collection<Abonement> findAll(Map<String, String> filter) {
        return null;
    }

    @Override
    public void deleteAbonement(Abonement task) {

    }
}
