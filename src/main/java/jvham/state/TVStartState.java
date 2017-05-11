package jvham.state;

public class TVStartState implements State {

	public String doAction() {
		System.out.println("Encendiendo televisiones...");
		return "Encendiendo televisiones...";
	}

}