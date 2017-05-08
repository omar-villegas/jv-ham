package jvham.abstractFactory;

public class ComplementosSinSal implements Complementos
{
    public ComplementosSinSal() {
    }

     public Papas getPapas() {
        return new PapasSinSal();
    }

     public Nuggets getNuggets() {
        return new NuggetsSinSal();
    }
}