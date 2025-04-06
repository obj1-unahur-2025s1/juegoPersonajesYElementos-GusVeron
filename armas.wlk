import personajes.*
import elementos.*


object ballesta {

  var flechas = 1

  method potenciaDeArma() = 4
  method estaCargada() = flechas > 0 
  method registrarUso() {
    flechas = flechas - 1
  } 
  method flechas() = flechas
}

object jabalina {

  var estaCargada = true

  method potenciaDeArma() = 30
  method estaCargada() = estaCargada
  method registrarUso() {
    estaCargada = false
  }
}