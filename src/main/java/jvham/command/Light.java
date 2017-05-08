package jvham.command;

public class Light {

	  private boolean on;

	  public void switchOn(){

	    on = true;
	    System.out.println("Encendiendo...");
	    Consola.estado = "Encendiendo...";

	  }

	  public void switchOff(){

	    on = false;
	    System.out.println("Apagando...");
	    Consola.estado = "Apagando...";

	  }

	}