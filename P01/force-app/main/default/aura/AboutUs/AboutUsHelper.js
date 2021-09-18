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
			"AppointmentDate" : AppointmentDate

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
	},

	AppointmentCreationVip2 : function(component, event, helper) {

		//Getting the Apex Class, AppointmentMaker is the method within our Apex Controller
		let MakeAppointment = component.get("c.AppointmentMaker");


		let FirstName = component.get("v.AppointmentRecordFirstNameVip2");
		let LastName= component.get("v.AppointmentRecordLastNameVip2");
		let Inspiration = component.get("v.AppointmentRecordInspirationVip2");
		let AppointmentDate = component.get("v.AppointmentRecordDateVip2");


		//Setting the parameters and sending these to the AppointmentMaker method
		MakeAppointment.setParams({
			"FirstName" : FirstName,
			"LastName" : LastName,
			"Inspiration" : Inspiration,
			"AppointmentDate" : AppointmentDate

		})

		MakeAppointment.setCallback(this, function(response){

			let myStatus = response.getState();

			if(myStatus === "SUCCESS"){
				//Pop up message
				window.alert("Your appointment is booked!");

				//Clearing the form
				component.set("v.AppointmentRecordFirstNameVip2", "");
				component.set("v.AppointmentRecordLastNameVip2", "");
				component.set("v.AppointmentRecordInspirationVip2", "");
				component.set("v.AppointmentRecordDateVip2", "");

			}
			else{
				console.log("There was an error calling out to the Apex Class ApointmentMaker");
				console.log(response.getError());
			}
		})
		$A.enqueueAction(MakeAppointment);
	},

	AppointmentCreationVip3 : function(component, event, helper) {

		//Getting the Apex Class, AppointmentMaker is the method within our Apex Controller
		let MakeAppointment = component.get("c.AppointmentMaker");


		let FirstName = component.get("v.AppointmentRecordFirstNameVip3");
		let LastName= component.get("v.AppointmentRecordLastNameVip3");
		let Inspiration = component.get("v.AppointmentRecordInspirationVip3");
		let AppointmentDate = component.get("v.AppointmentRecordDateVip3");


		//Setting the parameters and sending these to the AppointmentMaker method
		MakeAppointment.setParams({
			"FirstName" : FirstName,
			"LastName" : LastName,
			"Inspiration" : Inspiration,
			"AppointmentDate" : AppointmentDate

		})

		MakeAppointment.setCallback(this, function(response){

			let myStatus = response.getState();

			if(myStatus === "SUCCESS"){
				//Pop up message
				window.alert("Your appointment is booked!");

				//Clearing the form
				component.set("v.AppointmentRecordFirstNameVip3", "");
				component.set("v.AppointmentRecordLastNameVip3", "");
				component.set("v.AppointmentRecordInspirationVip3", "");
				component.set("v.AppointmentRecordDateVip3", "");

			}
			else{
				console.log("There was an error calling out to the Apex Class ApointmentMaker");
				console.log(response.getError());
			}
		})
		$A.enqueueAction(MakeAppointment);
	},

	AppointmentCreationVip4 : function(component, event, helper) {

		//Getting the Apex Class, AppointmentMaker is the method within our Apex Controller
		let MakeAppointment = component.get("c.AppointmentMaker");


		let FirstName = component.get("v.AppointmentRecordFirstNameVip4");
		let LastName= component.get("v.AppointmentRecordLastNameVip4");
		let Inspiration = component.get("v.AppointmentRecordInspirationVip4");
		let AppointmentDate = component.get("v.AppointmentRecordDateVip4");


		//Setting the parameters and sending these to the AppointmentMaker method
		MakeAppointment.setParams({
			"FirstName" : FirstName,
			"LastName" : LastName,
			"Inspiration" : Inspiration,
			"AppointmentDate" : AppointmentDate

		})

		MakeAppointment.setCallback(this, function(response){

			let myStatus = response.getState();

			if(myStatus === "SUCCESS"){
				//Pop up message
				window.alert("Your appointment is booked!");

				//Clearing the form
				component.set("v.AppointmentRecordFirstNameVip4", "");
				component.set("v.AppointmentRecordLastNameVip4", "");
				component.set("v.AppointmentRecordInspirationVip4", "");
				component.set("v.AppointmentRecordDateVip4", "");

			}
			else{
				console.log("There was an error calling out to the Apex Class ApointmentMaker");
				console.log(response.getError());
			}
		})
		$A.enqueueAction(MakeAppointment);
	},

	AppointmentCreationVip5 : function(component, event, helper) {

		//Getting the Apex Class, AppointmentMaker is the method within our Apex Controller
		let MakeAppointment = component.get("c.AppointmentMaker");


		let FirstName = component.get("v.AppointmentRecordFirstNameVip5");
		let LastName= component.get("v.AppointmentRecordLastNameVip5");
		let Inspiration = component.get("v.AppointmentRecordInspirationVip5");
		let AppointmentDate = component.get("v.AppointmentRecordDateVip5");


		//Setting the parameters and sending these to the AppointmentMaker method
		MakeAppointment.setParams({
			"FirstName" : FirstName,
			"LastName" : LastName,
			"Inspiration" : Inspiration,
			"AppointmentDate" : AppointmentDate

		})

		MakeAppointment.setCallback(this, function(response){

			let myStatus = response.getState();

			if(myStatus === "SUCCESS"){
				//Pop up message
				window.alert("Your appointment is booked!");

				//Clearing the form
				component.set("v.AppointmentRecordFirstNameVip5", "");
				component.set("v.AppointmentRecordLastNameVip5", "");
				component.set("v.AppointmentRecordInspirationVip5", "");
				component.set("v.AppointmentRecordDateVip5", "");

			}
			else{
				console.log("There was an error calling out to the Apex Class ApointmentMaker");
				console.log(response.getError());
			}
		})
		$A.enqueueAction(MakeAppointment);
	},

	AppointmentCreationVip6 : function(component, event, helper) {

		//Getting the Apex Class, AppointmentMaker is the method within our Apex Controller
		let MakeAppointment = component.get("c.AppointmentMaker");


		let FirstName = component.get("v.AppointmentRecordFirstNameVip6");
		let LastName= component.get("v.AppointmentRecordLastNameVip6");
		let Inspiration = component.get("v.AppointmentRecordInspirationVip6");
		let AppointmentDate = component.get("v.AppointmentRecordDateVip6");


		//Setting the parameters and sending these to the AppointmentMaker method
		MakeAppointment.setParams({
			"FirstName" : FirstName,
			"LastName" : LastName,
			"Inspiration" : Inspiration,
			"AppointmentDate" : AppointmentDate

		})

		MakeAppointment.setCallback(this, function(response){

			let myStatus = response.getState();

			if(myStatus === "SUCCESS"){
				//Pop up message
				window.alert("Your appointment is booked!");

				//Clearing the form
				component.set("v.AppointmentRecordFirstNameVip6", "");
				component.set("v.AppointmentRecordLastNameVip6", "");
				component.set("v.AppointmentRecordInspirationVip6", "");
				component.set("v.AppointmentRecordDateVip6", "");

			}
			else{
				console.log("There was an error calling out to the Apex Class ApointmentMaker");
				console.log(response.getError());
			}
		})
		$A.enqueueAction(MakeAppointment);
	}


})