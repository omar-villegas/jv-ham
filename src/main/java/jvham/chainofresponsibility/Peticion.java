package jvham.chainofresponsibility;

public class Peticion {
	private int value;
	private String descripcion;
	
	public Peticion (String descripcion , int value){
		this.value = value;
		this.descripcion = descripcion;
	}

	public int getValue() {
		return value;
	}

	public String getDescripcion() {
		return descripcion;
	}

}
