package net.caimito.services;

import static org.junit.Assert.* ;
import static org.hamcrest.CoreMatchers.* ;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;

import org.junit.Test;
import org.yaml.snakeyaml.Yaml;

public class AppointmentServiceTest {

	@Test
	public void makeAppointment() throws IOException {
		AppointmentService appointmentService = new AppointmentService() ;
		appointmentService.makeAppointment("Andrea Gonzalez", "15:00", "1.3.11", "Tollwutimpfung", "Fido") ;

		Yaml yaml = new Yaml() ;
		Map<String, Object> appointmentYaml = (Map<String, Object>) yaml.load(new FileInputStream("target/appointment.yaml")) ;
		assertThat((String)appointmentYaml.get("treatment"), is(equalTo("Tollwutimpfung"))) ;
	}
	
}
