public class ProductHandler {

    
    
    public static void ValidateProducts(List<product2> modifiedProducts) {
        
       
        for(product2 currProduct : modifiedProducts) {
            if(!IsValid(currProduct)) {
                currProduct.addError('Product not selected.');
            }
            else {
                currProduct.name += ' was selected!';
            }
        }
       
    }
    
    // This would contain your complex validation logic
    private static Boolean IsValid(product2 currProduct) {
        
        // Simple validation logic should be handled in a validation rule
        String name = currProduct.name;
        Integer value = Integer.valueOf(name.substring(4));
        return Math.mod(value, 2) == 0 && Math.mod(value, 6) == 0;
    }
    
   
}