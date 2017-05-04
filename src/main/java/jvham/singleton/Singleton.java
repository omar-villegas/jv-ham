package jvham.singleton;

public class Singleton {
	private static Singleton instance = null;
	   protected Singleton() {
	      // Exists only to defeat instantiation.
	   }
	   public static Singleton getInstance() {
	      if(instance == null) {
	         instance = new Singleton();
	      }
	      return instance;
	   }
	   
	   public String[] getMenu() {
		   String[] menu = new String[] {
		            "Estrella", "Desayuno", "Vegetariana", "Vaquera","Club de pollo",
		            "Papas a la francesa", "Soda", "Jugo de naranja", "Caf&eacute;", 
		            "Helado de chocolate", "Helado de fresa", "Helado de vainilla"
		        };
		   return menu;
	    }
	   
}
