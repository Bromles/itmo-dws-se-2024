package vk.itmo.dws.contracts;


import vk.itmo.dws.entity.Abonement;
import vk.itmo.dws.entity.AbonementUsage;

import java.util.Collection;
import java.util.Map;
import java.util.Optional;

public interface AbonementService extends SearchService<Abonement> {
    Collection<Abonement> findAllOwned(Map<String, String> filter);

    Optional<Abonement> findById(Long id);
    Collection<AbonementUsage> findAllSubscribed(Map<String, String> filter);
    boolean isAbonementActive(AbonementUsage abonementUsage);
    void increaseClassesPassed(AbonementUsage abonementUsage);
    Abonement subscribeToAbonement(Long abonementId);
    void deleteAbonement(Abonement task);
}
