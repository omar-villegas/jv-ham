package jvham.chainofresponsibility;

public abstract class AtencionAlCliente {
	protected AtencionAlCliente sucesor;

	public void setSucesor(AtencionAlCliente sucesor) {
		this.sucesor = sucesor;
	}

	public abstract String manejarPeticion(Peticion peticion);

}
