package jvham.flyweight;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class Menu {
	 private Map<String, SaborSoda> flavours = new ConcurrentHashMap<String, SaborSoda>();

	  synchronized SaborSoda lookup(final String flavorName) {
	    if (!flavours.containsKey(flavorName))
	      flavours.put(flavorName, new SaborSoda(flavorName));
	    return flavours.get(flavorName);
	  }

	  synchronized int totalSodaFlavoursMade() {
	    return flavours.size();
	  }

}
