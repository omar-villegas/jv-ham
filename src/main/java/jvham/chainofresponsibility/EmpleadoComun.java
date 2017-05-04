package jvham.chainofresponsibility;

public class EmpleadoComun extends AtencionAlCliente {

	@Override
	public String manejarPeticion(Peticion peticion) {
		// TODO Auto-generated method stub
		String mensaje = null;
		if (peticion.getValue() < 0)
		{           
			System.out.println("Los valores negativos son manejados por "+this.getClass());
			System.out.println("Valores peticion : " + peticion.getDescripcion() + peticion.getValue());
			mensaje = "Su petici&oacute;n ser&aacute; atendida por un empleado com&uacute;n.";
			return mensaje;
		}
		else
		{
			mensaje = "Su petici&oacute;n ser&aacute; atendida por un supervisor.";
			sucesor.manejarPeticion(peticion);
			
		}
		return mensaje;
	}

}
