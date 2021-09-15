({
    helpInitPage : function() {

        let getUsers = component.get("c.getAvailableUsers");

        getUsers.setCallback(this, function(response){

            if(response.getState() === "SUCCESS"){

                component.set("v.availableUsers", response.getValue());

            }else{
                console.log("There was an error with communicating with the sever");
            }

        })
        $A.enqueueAction(getUsers);

    },

    makeEmail : function(){

        let sendEmail = component.get("c.emailMaker");

        sendEmail.setParams({

            "mySubject" : mySubject,
            "myBody" : myBody,
            "toAddress" : toAddress

        })

    }
})