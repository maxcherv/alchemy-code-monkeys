({
    initPage : function(component, event, helper) {

        let getCartItems = component.get("c.getcartItems");

        getCartItems.setCallback(this, function(response){

            if(response.getState() == "SUCCESS"){
                component.set("v.cartItems", response.getValue());
            }else{
                console.log("There was an error in calling the apex class");
                console.log(response.getError());
            }

        })

        $A.enqueueAction(getCartItems);

    }
})