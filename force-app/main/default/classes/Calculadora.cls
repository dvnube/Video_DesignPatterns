public virtual class Calculadora {
    
    public Decimal n1;
    public Decimal n2;

    protected Decimal calc(Decimal n1, Decimal n2)
    {        
        if (n1 == null && n2 == null) {
            throw new CalculadoraException('Os valores são nulos');
        } else if (n1 == null) {
            throw new CalculadoraException('O primeiro valor é nulo');
        } else if (n2 == null) {
            throw new CalculadoraException('O segundo valor é nulo');
        } else {
            this.n1 = n1;
            this.n2 = n2;
        }

        return calc();
    }

    abstract Decimal calc();

    class CalculadoraException extends Exception {}

}
