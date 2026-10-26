class Vip{
    var descuento = 0

    method descuento() = descuento
    method sumarBonificacion(cant){
        descuento+=cant
    }
    method valorEntrada(entrada) = entrada.precio()*(1 - self.descuento()/100) 
}