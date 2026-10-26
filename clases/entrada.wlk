import objetos.productora.*

class Entrada {
  const property banda
  const property fecha
  const precioBase = 1000
  
  method precio() = precioBase + productora.impuesto()
}


