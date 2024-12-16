 package vk.itmo.dws.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vk.itmo.dws.entity.Abonement;
import vk.itmo.dws.entity.AbonementUsage;

import java.util.List;
import java.util.UUID;

 @Repository
public interface AbonemenUsageRepository extends JpaRepository<AbonementUsage, Long> {


    List<AbonementUsage> findByUserId(UUID userId);
}
