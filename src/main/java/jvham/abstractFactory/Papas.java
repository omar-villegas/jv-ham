package jvham.abstractFactory;

public abstract class Papas {
    private String texto;

    public String getTexto() {
        return this.texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public String entregar()
    {
        System.out.println("Entregando papas...");
        return "Entregando papas...";
    }

    // Método a implementar por las clases que hereden
     public abstract String configurar();
}