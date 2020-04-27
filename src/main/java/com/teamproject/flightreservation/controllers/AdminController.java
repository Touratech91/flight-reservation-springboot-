package com.teamproject.flightreservation.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import com.teamproject.flightreservation.entities.Flight;
import com.teamproject.flightreservation.entities.Passenger;
import com.teamproject.flightreservation.entities.Reservation;
import com.teamproject.flightreservation.entities.User;
import com.teamproject.flightreservation.repos.FlightRepository;
import com.teamproject.flightreservation.repos.PassengerRepository;
import com.teamproject.flightreservation.repos.ReservationRepository;
import com.teamproject.flightreservation.repos.UserRepository;

@Controller
public class AdminController {
	
	@Autowired
	private FlightRepository flightRepository;
	
	@Autowired
	private PassengerRepository passengerRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ReservationRepository reservationRepository;
	
	@GetMapping("/getAllFlights")
	public String adminAllFlights(ModelMap modelMap) {
		
		List<Flight> flights = flightRepository.findAll();
  
   		modelMap.addAttribute("flights", flights);
	
		return "administrator/getAllFlights";
	}
	
	@GetMapping("/getAllPassengers")
	public String adminAllPassengers(ModelMap modelMap) {
		
    	List<Passenger> passengers = passengerRepository.findAll();
    	
		modelMap.addAttribute("passengers", passengers);

		return "administrator/getAllPassengers";	
	}
	
	@GetMapping("/getAllUsers")
	public String adminAllUsers(ModelMap modelMap) {
		
    	List<User> users = userRepository.findAll();
    
		modelMap.addAttribute("users", users);

		return "administrator/getAllUsers";	
	}
	

	@GetMapping("/getAllReservations")
	public String adminAllreservations(ModelMap modelMap) {
		
		List<Reservation> reservations = reservationRepository.findAll();
    	
		modelMap.addAttribute("reservations", reservations);

		return "administrator/getAllReservations";	
	}
	
}
