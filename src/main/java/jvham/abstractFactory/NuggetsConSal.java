package jvham.abstractFactory;

public class NuggetsConSal extends Nuggets
{
    public NuggetsConSal()
    {
        this.configurar();
    }

     public String configurar()
    {
        System.out.println("Poniendo sal a los nuggets...");
        return "Poniendo sal a los nuggets...";
    }
}