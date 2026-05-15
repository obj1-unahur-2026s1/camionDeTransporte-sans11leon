import cosas.*

object camion {
    const elementos = []

    method cargar(objeto) {
        elementos.add(objeto)
    }

    method descargar(objeto) {
      elementos.remove(objeto)
    }

    const pesoBase = 1000
    
    method pesoTotal() = pesoBase + self.pesoDeElementos()

    method pesoDeElementos() = elementos.sum({elemento => elemento.peso()})

    method sonParesLosElementos() = elementos.forEach({elemento => elemento.peso().even()})
    
    method elementoPesa(valor) = elementos.find({elemento => elemento.peso() == valor})
    
    method elementosPeligro(nivelPeligro) = elementos.find({elemento => elemento.nivelDePeligro() == nivelPeligro})

    method elementosMasPeligrososA(nivelPeligro) = elementos.filter({elemento => elemento.nivelDePeligro() > nivelPeligro})  

    method elementosMasPeligrosos(unObjeto) = elementos.filter({elemento => elemento.nivelDePeligro() > unObjeto.nivelDePeligro() })
    
    method tienePesoExedido() = self.pesoTotal() > 2500

    method puedeCircular(nivelPeligro) = !self.tienePesoExedido() && !self.elementosPeligro(nivelPeligro)
}