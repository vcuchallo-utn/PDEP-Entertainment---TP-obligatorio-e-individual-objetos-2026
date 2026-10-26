import excepciones.*

class Asistente{
  var abono
  const property historialEntradas = []
  var saldo



  // Metodos para el descuento en la entrada
  method puedeRecibirBonificacion() = abono.esBonificable()
  method tieneSaldoPositivo() = saldo > 0
  method comprarEntrada(entrada){
    if(self.tieneSaldoPositivo()){
        saldo -= abono.valorEntrada(entrada)
        historialEntradas.add(entrada)
    }
    else throw new NoPuedePagar()
  }

  // Metodos para interactuar con la lista de entradas
  method historialEntradasAnioAnterior() = historialEntradas.filter({entrada => entrada.year() == self.fechaActual().year()-1})
  method bandasVistas() = historialEntradas.asSet().map({entrada => entrada.banda()})
  method nombreBandasVistas() = self.bandasVistas().map({banda => banda.nombre()})

  // Metodo para definir fecha actual
  method fechaActual() = new Date()
}