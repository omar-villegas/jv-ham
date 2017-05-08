package jvham.abstractFactory;

public class PapasConSal extends Papas {
    public PapasConSal()
    {
        this.configurar();
    }

     public String configurar()
    {
        System.out.println("Poniendo sal a las papas...");
        return "Poniendo sal a las papas...";
    }
}
