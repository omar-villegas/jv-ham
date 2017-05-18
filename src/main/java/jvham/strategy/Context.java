package jvham.strategy;

public class Context {
	 private Strategy strategy;

	   public Context(Strategy strategy){
	      this.strategy = strategy;
	   }

	   public String executeStrategy(String hora){
	      return strategy.HoraDelDia(hora);
	   }

}
