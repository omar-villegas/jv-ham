package jvham.bridge;

public abstract class Orden {
	TipoDeEntrega tipoDeEntrega;
    Orden(TipoDeEntrega tipoDeEntrega)
    {
        this.tipoDeEntrega=tipoDeEntrega;
    }
    abstract public void prepara();

}
