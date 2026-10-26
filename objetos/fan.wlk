import excepciones.*

object fan{
    method descuento() = 0
    method sumarBonificacion(cant){
        throw new EsFan()
    }
    method valorEntrada(entrada) = entrada.precio()
}