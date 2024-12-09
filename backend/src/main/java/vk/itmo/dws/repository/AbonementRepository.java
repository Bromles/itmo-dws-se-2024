package vk.itmo.dws.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vk.itmo.dws.entity.Abonement;
import vk.itmo.dws.entity.Basket;

@Repository
public interface AbonementRepository extends JpaRepository<Abonement, Long> {
}
