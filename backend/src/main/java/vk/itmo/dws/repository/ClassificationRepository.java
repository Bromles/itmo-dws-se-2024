package vk.itmo.dws.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import vk.itmo.dws.entity.Classification;

public interface ClassificationRepository extends JpaRepository<Classification, Long> {
}
