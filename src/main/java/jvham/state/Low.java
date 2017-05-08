package jvham.state;

public class Low extends State {
    public void pull(Chain wrapper) {
        wrapper.setState(new Low());
        System.out.println("   low speed");
    }
}