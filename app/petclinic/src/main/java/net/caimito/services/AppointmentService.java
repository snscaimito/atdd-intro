package net.caimito.services;

import java.io.FileWriter;
import java.util.HashMap;
import java.util.Map;

import org.yaml.snakeyaml.Yaml;

public class AppointmentService {

	public void makeAppointment(String petOwner, String time,
			String date, String treatment, String petName) {
		Yaml yaml = new Yaml();

		Map<String, Object> data = new HashMap<String, Object>();
		data.put("pet_owner", petOwner);
		data.put("treatment", treatment);
		data.put("time", time);
		data.put("date", date);
		data.put("pet_name", petName);

		try {
			FileWriter writer = new FileWriter("target/appointment.yaml");
			yaml.dump(data, writer);
			writer.close();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

}
