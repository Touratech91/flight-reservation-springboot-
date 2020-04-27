package com.teamproject.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.teamproject.flightreservation.entities.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {
}