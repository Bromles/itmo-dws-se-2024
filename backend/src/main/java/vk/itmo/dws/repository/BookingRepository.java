package vk.itmo.dws.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vk.itmo.dws.entity.Booking;
import vk.itmo.dws.entity.EntityType;
import vk.itmo.dws.entity.Review;

import java.awt.print.Book;
import java.util.List;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Long> {
}
