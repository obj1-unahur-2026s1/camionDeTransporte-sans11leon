import cosas.*

object camion {
    const elementos = []

    method cargar(objeto) {
        elementos.add(objeto)
    }

    method descargar(objeto) {
      elementos.remove(objeto)
    }

    var pesoBase = 1000
    method pesoTotal() = pesoBase + self.pesoDeElementos()

    method pesoDeElementos() = elementos.sum({elemento => elemento.peso()})

    method sonParesLosElementos() = elementos.forEach({elemento => elemento.peso().even()})
    
    method elementoPesa(valor) = elementos.find({elemento => elemento.peso() == valor})
    
}