({
    initPage : function(component, event, helper) {

        helper.helpInitPage(component, event, helper);

    },

    sendEmail : function(component, event, helper){

        console.log("Test");
        helper.makeEmail();

    }

})