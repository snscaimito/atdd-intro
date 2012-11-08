package net.caimito.pages;

import net.caimito.services.AppointmentService;

import org.apache.tapestry5.annotations.Property;
import org.apache.tapestry5.ioc.annotations.Inject;

public class Appointment {

	@Inject
	private AppointmentService appointmentService ;
	
	@Property
	private String petOwner ;
	
	@Property
	private String treatment ;
	
	@Property
	private String appointmentTime ;
	
	@Property
	private String appointmentDate ;
	
	@Property
	private String petName ;
	
	public Object onSuccess() {
		appointmentService.makeAppointment(petOwner, appointmentTime, appointmentDate, treatment, petName) ;
		
		return null ;
	}
}
