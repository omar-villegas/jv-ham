package jvham.state;

public class Off extends State {
    public void pull(Chain wrapper) {
        wrapper.setState(new Off());
        System.out.println( "   off speed" );
    }
}