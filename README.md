# Explicacion teorica

Todas las decisiones fueron tomadas para aprovechar de la mejor manera las ventajas del paradigmas, clases, herencia, polimorfismo, composicion, excepciones, colecciones, etc. La utilización de clases y el cuidado en el manejo de sus atributos y metodos, hacen que sea mucho mas simples hacer correcciones. 

## Herencia  y clases
El concepto de herencia se puede encontrar en la superclase de Banda y sus clases hijas de BandaRock, BandaIndie y BandaTrap. Estas comparten mismos atributos como el nombre y la logica en el metodo presupuesto, pero la diferencia esta en como se trata sus metodos popularidad() y gastoExtra(), ademas de que algunas ganan atributos como solosDeGuitarra, tieneHielo y cantInstrumentos.

## Polimorfismo y composicion
La clase Vip y el objeto fan comparten una misma interfaz, aprovechando el polimorfismo en la clase Asistente. Estas dos se encargan de calcular el precio de una entrada en base al descuento que aplican cada una, el objeto fan no tiene descuento mientras que la clase Vip lo tiene y depende de cada Asistente y de lo que asigna productora. Fue útil para aprovechar el polimorfismo y encapsulamiento.

## Manejo de excepciones
Tanto en Vip como fan se maneja una excepcion, si se quiere aumentar el descuento de fan (que no tiene), se envía una excepción. Además, cuando el Asistente tiene que pagar una entrada, si no tiene saldo positivo, no puede hacerlo, por lo que se notifica a través de una excepción esto.

## Colecciones
El trabajo con colecciones se aprecia en el objeto productora, este es el encargado de dado una lista de asistentes y lista de bandas calcular diferentes valores a traves de diversos métodos. El metodo gananciaTotal() a traves de sum() calcula el valor total vendido - los presupuestos de las bandas, el metodo bandaMasPopular(), calcula que banda vendio mas con un filter(). En estos y más se hace uso de los bloques y de los metodos pertinentes para aprovechar la expresividad y declaratividad.