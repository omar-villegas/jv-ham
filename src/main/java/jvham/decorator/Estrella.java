package jvham.decorator;

public class Estrella extends BurgerDecorator{
	public Estrella(Burger b) {
        super(b);
    }

    public double getCost() { // Overriding methods defined in the abstract superclass
        return super.getCost() + 30;
    }

    public String getIngredients() {
        return super.getIngredients() + " con carne, lechuga y tomate.";
    }

}
