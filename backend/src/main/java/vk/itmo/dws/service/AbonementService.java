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
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class AbonementService implements vk.itmo.dws.contracts.AbonementService {
    private final UserRepository userRepository;
    private final AbonementRepository abonementRepository;
    private final AbonemenUsageRepository abonementUsageRepository;
    protected ModelMapper mapper = new ModelMapper();


    @Override
    public Collection<Abonement> findAllOwned(Map<String, String> filter) {
        return abonementRepository.findByUser_Id(3L).stream().toList();
    }

    public Abonement create(AbonementCreateRequest abonementData) {
        return mapper.map(abonementData, Abonement.class);
    }

    public Collection<User> findAllSubscribers(Map<String, String> filter) {
        return null;
    }



    public Collection<AbonementUsage> findAllSubscribed(Map<String, String> filter) {
        return abonementUsageRepository.findByUser_Id(1L);//TODO get user id
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
        abonementUsage.setUser(userRepository.findById(1L).orElseThrow());//TODO get user id
        abonementUsageRepository.save(abonementUsage);
        return abonement;
    }

    public void unsubscribeAbonement(AbonementUsage abonementUsage) {
        abonementUsage.setUser(null);
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
