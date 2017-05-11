package jvham.state;

public class TVContext implements State {

	private State tvState;

	public void setState(State state) {
		this.tvState=state;
	}

	public State getState() {
		return this.tvState;
	}

	
	public String doAction() {
		return this.tvState.doAction();
		
	}

}