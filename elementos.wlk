import personajes.*
import armas.*


object castillo {
  
   const altura = 20
   var nivelDeDefensa = 150

   method altura() = altura
   method nivelDeDefensa() = nivelDeDefensa
   method recibirAtaque(unArma) {
    nivelDeDefensa = nivelDeDefensa - unArma.potenciaDeArma()
   }
   method recibirTrabajo() {
    nivelDeDefensa = nivelDeDefensa + 20
   }
   method otorgarValor() = nivelDeDefensa / 5
}

object aurora {
  
    const altura = 1
    var estaViva = true

    method altura() = altura
    method estaViva() = estaViva
    method recibirAtaque(unArma) {
        if(unArma.potenciaDeArma() >=  10) {
            estaViva = false
        }
    }
    method recibirTrabajo(){}
    method otorgarValor() = 15
}

object tipa {

    var altura = 8
  
    method altura() = altura  
    method recibirAtaque(unArma){}
    method recibirTrabajo() {
        altura = altura + 1
    }
    method otorgarValor() = altura * 2
}