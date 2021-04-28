Feature: Validating Place API's
@AddPlace
Scenario Outline: Verify if Place is succesfully added by AddPlaceAPI
		Given Add Place Payload  with "<name>" "<language>" "<address>"
		When User calls "AddPlaceAPI" with "POST" Http request
		Then the API call is sucess with satus code 200
		And "status" in response body is "OK"
		And "scope" in response body is "APP"
		And verify place_Id created maps to "<name>" using "getPlaceAPI"
	
Examples:
	|name  			|language  	|address			|
	|Michael		|Java		|cologne			|
	|Martin			|Spainsh	|Bonn				|
	
@DeletePlace
Scenario: Verify if Delete Place API functinality is working
		Given Delete Place Payload  
		When User calls "deletePlaceAPI" with "POST" Http request
		Then the API call is sucess with satus code 200
		And "status" in response body is "OK"
		#And "scope" in response body is "APP"
		#And verify place_Id created maps to "<name>" using "getPlaceAPI"
	