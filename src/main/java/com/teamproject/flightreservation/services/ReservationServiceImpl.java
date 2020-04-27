package com.teamproject.flightreservation.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamproject.flightreservation.dto.ReservationRequest;
import com.teamproject.flightreservation.entities.Flight;
import com.teamproject.flightreservation.entities.Passenger;
import com.teamproject.flightreservation.entities.Reservation;
import com.teamproject.flightreservation.repos.FlightRepository;
import com.teamproject.flightreservation.repos.PassengerRepository;
import com.teamproject.flightreservation.repos.ReservationRepository;


@Service
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	FlightRepository flightRepository;
	
	
	@Autowired
	PassengerRepository passengerRepository;
	
	@Autowired
	ReservationRepository reservationRepository;

	public Reservation bookFlight(ReservationRequest request) {
		
		Long flightId = request.getFlightId();
		Optional<Flight> flight = flightRepository.findById(flightId);
		
		Passenger passenger = new Passenger();
		passenger.setFirstName(request.getPassengerFirstName());
		passenger.setLastName(request.getPassengerLastName());
		passenger.setPhone(request.getPassengerPhone());
		passenger.setEmail(request.getPassengerEmail());
		Passenger savedPassenger = passengerRepository.save(passenger);
		
		Reservation reservation = new Reservation();
		reservation.setFlight(flight.get());
		reservation.setPassenger(savedPassenger);
		reservation.setCheckedIn(false);
		
		Reservation savedReservation = reservationRepository.save(reservation);
		
		return savedReservation;
	}


}
