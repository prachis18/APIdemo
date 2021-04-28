package stepDefinitions;


import java.io.IOException;

import io.cucumber.java.Before;
public class Hooks {

	@Before("@DeletePlace")
	
	public void beforeScenario() throws IOException
	{
		
		//write a code that will give you place id
		//execute this code nly when place id is null
		Step m= new Step();
		
		if(Step.place_id==null) 
		{
		m.add_place_payload_with("MIAN", "DEUTSCH", "Munich");
		m.user_calls_with_http_request("AddPlaceAPI", "POST");
		m.verify_place_id_created_maps_to_using("MIAN", "getPlaceAPI");
	}
	
	}
}
