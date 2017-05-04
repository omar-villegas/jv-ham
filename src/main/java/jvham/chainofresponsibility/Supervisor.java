package jvham.chainofresponsibility;

public class Supervisor extends AtencionAlCliente{
	@Override
	public String manejarPeticion(Peticion peticion) {
		String mensaje = null;
		if (peticion.getValue() >= 0) { 
			System.out.println("Los valores mayores que 0 son manejados por "+this.getClass());
			System.out.println("Valores peticion : "+ peticion.getDescripcion() + peticion.getValue());
			mensaje = "Su petici&oacute;n ser&aacute; atendida por un supervisor.";
			return mensaje;
		} else {
			sucesor.manejarPeticion(peticion);
		}
		return mensaje;
		
	}

}
