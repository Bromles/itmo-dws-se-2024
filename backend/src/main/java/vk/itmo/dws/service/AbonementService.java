package vk.itmo.dws.service;

import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import vk.itmo.dws.dto.request.abonement.AbonementCreateRequest;
import vk.itmo.dws.entity.*;
import vk.itmo.dws.entity.Class;
import vk.itmo.dws.enums.BookingStateEnum;
import vk.itmo.dws.exception.ClassAlreadyBoughtException;
import vk.itmo.dws.repository.*;

import java.time.LocalDateTime;
import java.time.Period;
import java.util.*;

@Service
@RequiredArgsConstructor
public class AbonementService implements vk.itmo.dws.contracts.AbonementService {
    private final UserService userService;
    private final AbonementRepository abonementRepository;
    private final AbonemenUsageRepository abonementUsageRepository;
    private final SectionRepository sectionRepository;
    protected ModelMapper mapper = new ModelMapper();


    @Override
    public Collection<Abonement> findAllOwned(Map<String, String> filter) {
//        return abonementRepository.findByUserId("sd").stream().toList();
        return new ArrayList<>();
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
        abonementRepository.save(abonement);
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
        AbonementUsage abonementUsage = new AbonementUsage();
        abonementUsage.setAbonement(abonement);
        abonementUsageRepository.save(abonementUsage);
        return abonement;
    }

    public void unsubscribeAbonement(AbonementUsage abonementUsage) {
        abonementUsage.setUserId(null);
        abonementUsageRepository.save(abonementUsage);
    }

    @Override
    public Optional<Abonement> findById(Long id) {
        return abonementRepository.findById(1L);//TODO get user id
    }

    @Override
    public Collection<Abonement> findAll(Map<String, String> filter) {
        return null;
    }

    @Override
    public void deleteAbonement(Abonement task) {

    }
}