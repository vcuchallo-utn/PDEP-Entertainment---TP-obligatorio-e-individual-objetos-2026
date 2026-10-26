import objetos.vip.*
import objetos.fan.*

object productora{
    var property impuesto = 0
    const property listaAsistentes = #{}
    const property listaBandas = #{}

    method listaDeEntradasTotales() = listaAsistentes.map({asistente => asistente.historialEntradas()}).flatten()

    // Metodos de consigna 
    method gananciaTotal(){
        const presupuestos = listaBandas.sum({banda => banda.presupuesto()})
        const valorTotal = self.listaDeEntradasTotales().sum({entrada => entrada.precio()})
        return valorTotal - presupuestos
    }
    method cantidadEntradasVendidas() = self.listaDeEntradasTotales().size()
    method bandaMasPopular() = listaBandas.max({banda => self.cantEntradasVendidasDeBanda(banda)})

    method cantEntradasVendidasDeBanda(banda) = self.listaDeEntradasTotales().filter({entrada => entrada.banda() == banda}).size()

    // Metodo para calcular descuento
    method bonificarAsistente(asistente){
        asistente.abono().sumarBonificacion(1)
    }

}
