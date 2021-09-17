({
	//EmployeeInformation1 when clicked will set vipBool1 to true
	//Doing this will display the Vip employee summary and 
	//The button to close the information
	employeeInformation1 : function(component, event, helper) {
		component.get("v.VipBool1");
		component.set("v.VipBool1", true);
	},
	//EmployeeInformation1Close when clicked will set vipBool1 to false
	//Doing this will hide the Vip employee summary and 
	//The button to close the information
	employeeInformation1Close : function(component, event, helper) {
		component.get("v.VipBool1");
		component.set("v.VipBool1", false);
	},

	//EmployeeInformation2 when clicked will set vipBool2 to true
	//Doing this will display the Vip employee summary and 
	//The button to close the information
	employeeInformation2 : function(component, event, helper) {
		component.get("v.VipBool2");
		component.set("v.VipBool2", true);
	},
	//EmployeeInformation2Close when clicked will set vipBool2 to false
	//Doing this will hide the Vip employee summary and 
	//The button to close the information
	employeeInformation2Close : function(component, event, helper) {
		component.get("v.VipBool2");
		component.set("v.VipBool2", false);
	},

	//EmployeeInformation3 when clicked will set vipBool3 to true
	//Doing this will display the Vip employee summary and 
	//The button to close the information
	employeeInformation3 : function(component, event, helper) {
		component.get("v.VipBool3");
		component.set("v.VipBool3", true);
	},
	//EmployeeInformation3Close when clicked will set vipBool3 to false
	//Doing this will hide the Vip employee summary and 
	//The button to close the information
	employeeInformation3Close : function(component, event, helper) {
		component.get("v.VipBool3");
		component.set("v.VipBool3", false);
	},

	//EmployeeInformation4 when clicked will set vipBool4 to true
	//Doing this will display the Vip employee summary and 
	//The button to close the information
	employeeInformation4 : function(component, event, helper) {
		component.get("v.VipBool4");
		component.set("v.VipBool4", true);
	},
	//EmployeeInformation4Close when clicked will set vipBool4 to false
	//Doing this will hide the Vip employee summary and 
	//The button to close the information
	employeeInformation4Close : function(component, event, helper) {
		component.get("v.VipBool4");
		component.set("v.VipBool4", false);
	},

	//EmployeeInformation5 when clicked will set vipBool5 to true
	//Doing this will display the Vip employee summary and 
	//The button to close the information
	employeeInformation5 : function(component, event, helper) {
		component.get("v.VipBool5");
		component.set("v.VipBool5", true);
	},
	//EmployeeInformation5Close when clicked will set vipBool5 to false
	//Doing this will hide the Vip employee summary and 
	//The button to close the information
	employeeInformation5Close : function(component, event, helper) {
		component.get("v.VipBool5");
		component.set("v.VipBool5", false);
	},

	//EmployeeInformation6 when clicked will set vipBool6 to true
	//Doing this will display the Vip employee summary and 
	//The button to close the information
	employeeInformation6 : function(component, event, helper) {
		component.get("v.VipBool6");
		component.set("v.VipBool6", true);
	},
	//EmployeeInformation6Close when clicked will set vipBool6 to false
	//Doing this will hide the Vip employee summary and 
	//The button to close the information
	employeeInformation6Close : function(component, event, helper) {
		component.get("v.VipBool6");
		component.set("v.VipBool6", false);
	},

	//A user wants to book an appointment with Vip1
	//Pop up window appears helping them create an appointment
	appointmentVip1: function(component, event, helper) {

		//Close vip information section
		component.get("v.VipSection");
		component.set("v.VipSection", false);

		//Show Assignment form for Vip1 appointments
		component.get("v.AppointmentAssignmentSection");
		component.set("v.AppointmentAssignmentSection", true);
	},

	//A user clicks on the confirm button to create the appointment with the designated Vip team
	AppointmentSetupV1: function(component, event, helper){
		
		//Call on the helper to execute logic needed to call a apex class to create the appointment record
		helper.AppointmentCreationVip1(component, event, helper);

		//Hide away the appointment scheduling
		component.get("v.AppointmentAssignmentSection");
		component.set("v.AppointmentAssignmentSection", false);

		//Show Vip information section
		component.get("v.VipSection");
		component.set("v.VipSection", true);
	}
})