public with sharing class CalculadoraController {

    @AuraEnabled(cacheable=true)
    public static Decimal soma(Decimal n1, Decimal n2) {
        return CalculadoraFactory.newInstance(Operador.SOMA).calc(n1, n2);
    }

    @AuraEnabled(cacheable=true)
    public static Decimal subtracao(Decimal n1, Decimal n2) {
        return CalculadoraFactory.newInstance(Operador.SUBTRACAO).calc(n1, n2);
    }

    @AuraEnabled(cacheable=true)
    public static Decimal multiplicacao(Decimal n1, Decimal n2) {
        return CalculadoraFactory.newInstance(Operador.MULTIPLICACAO).calc(n1, n2);
    }
    
}