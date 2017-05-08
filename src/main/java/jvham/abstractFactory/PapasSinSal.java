package jvham.abstractFactory;

public class PapasSinSal extends Papas {
    public PapasSinSal()
    {
        this.configurar();
    }

     public String configurar()
    {
        System.out.println("Dejando papas sin sal...");
        return "Dejando papas sin sal...";
    }
}