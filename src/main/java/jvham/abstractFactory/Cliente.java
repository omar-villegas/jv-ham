package jvham.abstractFactory;

public class Cliente {
    public Cliente( Complementos style )
   {
       Papas papas = style.getPapas();
       papas.entregar();
       Nuggets nuggets = style.getNuggets();
       nuggets.entregar();
   }
}
  