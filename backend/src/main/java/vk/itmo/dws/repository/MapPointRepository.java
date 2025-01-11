package vk.itmo.dws.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vk.itmo.dws.entity.MapPoint;

@Repository
public interface MapPointRepository extends JpaRepository<MapPoint, Long> {


}