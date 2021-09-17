({
	AppointmentCreationVip1 : function(component, event, helper) {

		//Getting the Apex Class, AppointmentMaker is the method within our Apex Controller
		let MakeAppointment = component.get("c.AppointmentMaker");


		let FirstName = component.get("v.AppointmentRecordFirstNameVip1");
		let LastName= component.get("v.AppointmentRecordLastNameVip1");
		let Inspiration = component.get("v.AppointmentRecordInspirationVip1");
		let AppointmentDate = component.get("v.AppointmentRecordDateVip1");


		//Setting the parameters and sending these to the AppointmentMaker method
		MakeAppointment.setParams({
			"FirstName" : FirstName,
			"LastName" : LastName,
			"Inspiration" : Inspiration,
			"Date" : AppointmentDate

		})

		MakeAppointment.setCallback(this, function(response){

			let myStatus = response.getState();

			if(myStatus === "SUCCESS"){
				//Pop up message
				window.alert("Your appointment is booked!");

				//Clearing the form
				component.set("v.AppointmentRecordFirstNameVip1", "");
				component.set("v.AppointmentRecordLastNameVip1", "");
				component.set("v.AppointmentRecordInspirationVip1", "");
				component.set("v.AppointmentRecordDateVip1", "");

			}
			else{
				console.log("There was an error calling out to the Apex Class ApointmentMaker");
				console.log(response.getError());
			}
		})
		$A.enqueueAction(MakeAppointment);
	}
})