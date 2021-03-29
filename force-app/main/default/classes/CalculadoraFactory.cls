public with sharing class CalculadoraFactory {

    private static Map<Operador, Type> operacoesMap = new Map<Operador, Type> {
        Operador.SOMA => Soma.class
        , Operador.SUBTRACAO => Subtracao.class
        , Operador.MULTIPLICACAO => Multiplicacao.class
    };

    public static ICalculadora newInstance(Operador o) {
        return (ICalculadora) operacoesMap.get(o).newInstance();
    }

}
