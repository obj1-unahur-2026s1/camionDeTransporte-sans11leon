object knigthRider {
    method peso() = 500

    method nivelDePeligro() = 10
}
object bumblebee {
    method peso() = 800

    var esAuto = false
    method esAuto(bool) {
      esAuto = bool
    }

    method nivelDePeligro() {
        return
        if (esAuto){
            15
        } else{
            30
        }
    }
}

object paquetesDeLadrillos {
  var cantidadDeLadrillos = 1

  method peso() = 2 * cantidadDeLadrillos

  method cambiarCantidad(cantidad) {
    cantidadDeLadrillos = cantidad
  }

  method nivelDePeligro() = 2
}

object arenaAGranel {
  var peso = 0

  method nivelDePeligro() = 1

  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }
}

object bateriaAntiaerea {
  var estaCargado = false
  method estaCargado() = estaCargado
  method estaCargado(bool){
    estaCargado = bool
  }

  method nivelDePligro() {
    return
    if (estaCargado){
        100
    } else{
        0
    }
  }
  
  method peso() {
    return
        if (estaCargado){
            300
        } else { 
            200
        }
  }
}