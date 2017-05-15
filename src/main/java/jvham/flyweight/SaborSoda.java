package jvham.flyweight;

public class SaborSoda {
	 private final String name;

	  SaborSoda(final String newFlavor) {
	    this.name = newFlavor;
	  }

	  @Override
	  public String toString() {
	    return name;
	  }

}
