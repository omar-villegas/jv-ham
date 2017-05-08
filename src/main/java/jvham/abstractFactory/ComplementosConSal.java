package jvham.abstractFactory;

public class ComplementosConSal implements Complementos {
    public ComplementosConSal() {
    }

     public Papas getPapas() {
        return new PapasConSal();
    }

     public Nuggets getNuggets() {
        return new NuggetsConSal();
    }
}
