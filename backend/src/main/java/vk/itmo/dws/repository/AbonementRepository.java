package vk.itmo.dws.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vk.itmo.dws.entity.Abonement;
import vk.itmo.dws.entity.Basket;

import java.util.List;
import java.util.UUID;

@Repository
public interface AbonementRepository extends JpaRepository<Abonement, Long> {


    List<Abonement> findByUserId(UUID userId);
}
