class Banda{
    const property nombre

    method presupuesto() = self.canon() + self.gastoExtra()

    method canon() = 1000000
    method popularidad()
    method gastoExtra()
}

class BandaRock inherits Banda{
    const solosDeGuitarra

    override method popularidad() = 100 * solosDeGuitarra
    override method gastoExtra() = 10000
} 

class BandaTrap inherits Banda{
    const tieneHielo

    override method canon() = super() * self.popularidad()
    override method popularidad(){
        if(tieneHielo) return 1000
        else return 0
    }
    override method gastoExtra() = 0
}

class BandaIndie inherits Banda{
    const cantInstrumentos

    override method popularidad() = nombre.size() * 3.14
    override method gastoExtra() = 500 * cantInstrumentos
}