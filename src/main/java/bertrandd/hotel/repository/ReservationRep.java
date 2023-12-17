package bertrandd.hotel.repository;

import java.util.Collection;

import bertrandd.hotel.entity.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReservationRep extends JpaRepository<Reservation, Integer> {
	
	Reservation findById(int resId);
	
	Collection<Reservation> findAllByUserId(int userId);

}
