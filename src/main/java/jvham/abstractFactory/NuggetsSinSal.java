package jvham.abstractFactory;

public class NuggetsSinSal extends Nuggets
{
    public NuggetsSinSal()
    {
        this.configurar();
    }

     public String configurar()
    {
        System.out.println("Dejando nuggets sin sal...");
        return "Dejando nuggets sin sal...";
    }
}
