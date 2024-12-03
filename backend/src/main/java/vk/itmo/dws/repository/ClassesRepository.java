package vk.itmo.dws.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vk.itmo.dws.entity.Booking;
import vk.itmo.dws.entity.Class;

@Repository
public interface ClassesRepository extends JpaRepository<Class, Long> {
}
