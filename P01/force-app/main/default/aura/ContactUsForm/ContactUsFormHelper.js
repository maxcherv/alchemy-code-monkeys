({
    helpInitPage : function(component, event, helper) {

        //Makes a callout to the apex controller to get users who can accept questions
        let getUsers = component.get("c.getAvailableUsers");

        getUsers.setCallback(this, function(response){

            if(response.getState() === "SUCCESS"){

                component.set("v.availableUsers", response.getReturnValue());
                console.log(response.getReturnValue());

            }else{
                console.log("There was an error with communicating with the sever");
            }

        })
        $A.enqueueAction(getUsers);

    },

    makeEmail : function(component, event, helper){

        let sendEmail = component.get("c.emailMaker");

        //Gets values from the component
        let fName = component.get("v.firstName");
        let lName = component.get("v.lastName");
        let email = component.get("v.email");        
        let mySubject = component.get("v.subject");
        let message = component.get("v.message");

        //Temporary email to send to
        let toAddress = component.find("PersonSelect").get("v.value");

        //Sets up the body
        let myBody = fName + " " + lName + " has submitted a question. The return email is: " + email + " with a body of:\n" + message;

        sendEmail.setParams({

            "mySubject" : mySubject,
            "myBody" : myBody,
            "toAddress" : toAddress

        })

        sendEmail.setCallback(this, function(response){

            let myStatus = response.getState();

            if(myStatus === "SUCCESS"){

                let showToast = $A.get("e.force:showToast");
                window.alert("Your question has been submitted");

                //Clear the form here
                component.set("v.firstName", "");
                component.set("v.lastName", "");
                component.set("v.email", "");
                component.set("v.subject", "");
                component.set("v.message", "");
                component.find("PersonSelect").set("v.value", "");

            }else{
                console.log("There was an error calling out to the apex class");
                console.log(response.getError());
            }

        })

        $A.enqueueAction(sendEmail);
    }
})