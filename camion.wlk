import cosas.*

object camion {
    const elementos = []

    method cargar(objeto) {
        elementos.add(objeto)
    }

    method descargar(objeto) {
      elementos.remove(objeto)
    }

    method pesoBase() = 1000
    
    method pesoTotal() = self.pesoBase() + self.pesoDeElementos()

    method pesoDeElementos() = elementos.sum({elemento => elemento.peso()})

    //method sonParesLosElementos() = elementos.forEach({elemento => elemento.peso().even()}) ESTA MAL PORQUE ALL TE DEVUELVE TODOS LOS QUE CUMPLAN X CONDICION, RESUELVE MEJOR
    method sonParesLosElementos() = elementos.all({elemento => elemento.peso().even()})

    //method elementoPesa(valor) = elementos.find({elemento => elemento.peso() == valor}) ESTA MAL PORQUE FIND NO DEVUELVE UN BOOLEANO SINO UN VALOR
    method elementoPesa(valor) = elementos.any({elemento => elemento.peso() == valor})
    
    method elementosPeligro(nivelPeligro) = elementos.find({elemento => elemento.nivelDePeligro() == nivelPeligro})

    method elementosMasPeligrososA(nivelPeligro) = elementos.filter({elemento => elemento.nivelDePeligro() > nivelPeligro})  

    method elementosMasPeligrosos(unObjeto) = elementos.filter({elemento => elemento.nivelDePeligro() > unObjeto.nivelDePeligro() })
    
    method tienePesoExedido() = self.pesoTotal() > 2500

    //method puedeCircular(nivelPeligro) = !self.tienePesoExedido() && !self.elementosPeligro(nivelPeligro) ELEMENTOPELIGRO DEVUELVE UN OBJETO, NO UN BOOL
    method puedeCircular(nivelPeligro) = !self.tienePesoExedido() && elementos.any({x => x.nivelDePeligro() > nivelPeligro})

    //method cargaPesaEntre(min,max) = elementos.any({x => x.peso().between(min, max)})

    //falta la segunda parte de Agregados al camión
}