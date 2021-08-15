trigger PriceTrigger on Product2 (before insert, before update) {
	// Prevent adding or updating a product that has a price under zero
	
	// Access the product records that caused the trigger to fire, context variable "Trigger.New"
    for (Product2 p : Trigger.New) {
        if (p.Price__c < 0) {
            p.Price__c.addError('Error cannot add a product that has negative price');
        }
    }
}