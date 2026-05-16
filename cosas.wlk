object knigthRider {
    method peso() = 500

    method nivelDePeligro() = 10
}

object bumblebee {
    method peso() = 800

    var esAuto = false

    //method esAuto(bool) { esAuto = bool }
    method transformar() {
      esAuto = !esAuto
    }

    method nivelDePeligro() {
        if (esAuto){
            return 15
        } else{
            return 30
        }
    }
}

object paquetesDeLadrillos {
  var cantidadDeLadrillos = 0

  method peso() = 2 * cantidadDeLadrillos

  method cambiarCantidad(cantidad) {
    cantidadDeLadrillos = cantidad
  }

  method nivelDePeligro() = 2
}

object arenaAGranel {
  var peso = 0
  method peso() = peso
  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }
  //var property peso = x 

  method nivelDePeligro() = 1

}

object bateriaAntiaerea {
  var estaCargado = true
  method estaCargado() = estaCargado
  method estaCargado(bool){
    estaCargado = bool
  }

  method nivelDePeligro() {
    if (estaCargado){
        return 100
    } else{
        return 0
    }
  }
  
  method peso() {
        if (estaCargado){
            return 300
        } else { 
            return 200
        }
  }
}

object contenedorPortuario {
  const contenido = []

  method peso() = 100 + self.pesoDeContenido()

  method nivelDePeligro() = self.elMasPeligroso().nivelDePeligro()

  method estaVacio() = contenido.isEmpty()

  method agregar(objeto) {
    contenido.add(objeto)
  }
  
  method quitar(objeto) {
    contenido.remove(objeto)
  }

  method elMasPeligroso() = contenido.max({elemento => elemento.nivelDePeligro()})

  method pesoDeContenido() = contenido.sum({elemento => elemento.peso()})
}

object residuosRadioactivos {
    var peso = 0
    method peso() = peso
    method peso(nuevoPeso) {
      peso = nuevoPeso
    }

    method nivelDePeligro() = 200
}

object embalajeDeSeguridad {
  var cosa = null

  method embalar(objeto) {
    cosa = objeto
  } 

  method peso() = cosa.peso()
  method nivelDePeligro() = cosa.nivelDePeligro() / 2
}