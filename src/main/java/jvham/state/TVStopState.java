package jvham.state;

public class TVStopState implements State {

	public String doAction() {
		System.out.println("Apagando televisiones...");
		return "Apagando televisiones...";
	}

}