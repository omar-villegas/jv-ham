package jvham.decorator;

public class Desayuno extends BurgerDecorator {
	public Desayuno(Burger b) {
        super(b);
    }

    public double getCost() {
        return super.getCost() + 20;
    }

    public String getIngredients() {
        return super.getIngredients() + " con huevo, jam&oacute;n y tocino.";
    }

}
