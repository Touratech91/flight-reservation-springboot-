package com.teamproject.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.teamproject.flightreservation.entities.Passenger;

public interface PassengerRepository extends JpaRepository<Passenger, Long> {

}
