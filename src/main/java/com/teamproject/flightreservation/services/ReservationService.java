package com.teamproject.flightreservation.services;

import com.teamproject.flightreservation.dto.ReservationRequest;
import com.teamproject.flightreservation.entities.Reservation;

public interface ReservationService {
	
	public Reservation bookFlight(ReservationRequest request);

}
