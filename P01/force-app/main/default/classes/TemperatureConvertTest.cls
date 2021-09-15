@isTest
public class TemperatureConvertTest {
@isTest static void testWarmTemp() {
        Decimal celsius = TemperatureConverter.fahrenheitToCelsius(70);
        System.assertEquals(21.11,celsius);
    }
    
    @isTest static void testFreezingPoint() {
        Decimal celsius = TemperatureConverter.fahrenheitToCelsius(32);
        System.assertEquals(0,celsius);
    }
    @isTest static void testBoilingPoint() {
        Decimal celsius = TemperatureConverter.fahrenheitToCelsius(212);        
        System.assertEquals(0,celsius,'Boiling point temperature is not expected.');
    } 
    
    @isTest static void testNegativeTemp() {
        Decimal celsius = TemperatureConverter.fahrenheitToCelsius(-10);
        System.assertEquals(-23.33,celsius);
    }
      
}