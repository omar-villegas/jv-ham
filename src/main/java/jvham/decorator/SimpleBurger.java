package jvham.decorator;

public class SimpleBurger implements Burger{
	
    public double getCost() {
        return 20;
    }
    
    public String getIngredients() {
        return "Hamburguesa";
    }
}
