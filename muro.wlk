import pepita.*

object muro {
    var property position =  game.at(5,5)

    method image() {
        return "muro.png"
    }

    method colisionoCon(objeto) {
        objeto.noPuedoAvanzar()
      
    }
  
}