package jvham.abstractFactory;
import java.util.ArrayList;

public abstract class Nuggets {
    private ArrayList<String> elementos = new ArrayList<String>();
    // -------------------------------
    public String getElemento( int posicion ) {
        return this.elementos.get( posicion );
    }
    // -------------------------------
    public void insertarElemento( String texto ) {
        this.elementos.add( texto );
    }

    public String entregar()
    {
        System.out.println("Entregando nuggets...");
        return "Entregando nuggets...";
    }

    // Método a implementar por las clases que hereden
     public abstract String configurar();
}
