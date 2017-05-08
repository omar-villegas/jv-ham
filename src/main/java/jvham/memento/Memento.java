package jvham.memento;

public class Memento {
	private int[] cantidades;

    public Memento(int[] cantidades) {
        this.cantidades = cantidades;
    }

    public int[] getState() {
        return cantidades;
    }

}
