({
    initPage : function(component, event, helper) {

        helper.helpInitPage(component, event, helper);

    },

    sendEmail : function(component, event, helper){

        helper.makeEmail(component, event, helper);

    },

    TabWasClicked : function(component, event, helper){

        helper.fireEvent(component, event, helper);

    }

})