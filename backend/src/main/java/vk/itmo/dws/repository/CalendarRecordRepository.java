package vk.itmo.dws.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vk.itmo.dws.entity.CalendarRecord;

@Repository
public interface CalendarRecordRepository extends JpaRepository<CalendarRecord, Long> {
}