import armas.*
import elementos.*


object luisa {
   
}

object floki {

   var armaActual = jabalina

   method armaActual() = armaActual
   method cambiarArma(nuevaArma) {
    armaActual = nuevaArma
   }
   method encontrarElemento(elemento) {

      if(armaActual.estaCargada()) {
      elemento.recibirAtaque(armaActual)
      armaActual.registrarUso()
      }
   }
}

object mario {

   var valorRecolectado = 10
   var ultimoElementoEncontrado = castillo

   method valorRecolectado() = valorRecolectado  
   method encontrarElemento(elemento) {
      elemento.recibirTrabajo()
      valorRecolectado = valorRecolectado + elemento.otorgarValor()
      ultimoElementoEncontrado = elemento
   }
   method esFeliz() = valorRecolectado >= 50 || 
                      ultimoElementoEncontrado.altura() >= 10  
}