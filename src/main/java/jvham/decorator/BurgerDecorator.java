package jvham.decorator;

public abstract class BurgerDecorator implements Burger{
	protected final Burger decoratedBurger;

    public BurgerDecorator(Burger b) {
        this.decoratedBurger = b;
    }

    public double getCost() { // Implementing methods of the interface
        return decoratedBurger.getCost();
    }

    public String getIngredients() {
        return decoratedBurger.getIngredients();
    }
}
