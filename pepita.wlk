import extras.*
import nido.*
import silvestre.*

object pepita {
	var energia = 500
	var property position = game.at(0,3)
	var posAntigua = null

	method position(){
		return game.at(self.posX(), self.posY())
	}

	method posX() {
		const posX = position.x().max(0)
		return posX.min(game.width()-1)
	}

	method posY() {
		const posY = position.y().max(0)
		return posY.min(game.height()-1)
	}

	method moverArriba() {
		self.validarPoderMoverme()
		posAntigua = position
		position = game.at(self.posX(), self.posY()).up(1)
		energia -= 9
	}

	method moverAbajo() {
		self.validarPoderMoverme()
		posAntigua = position
		position = game.at(self.posX(), self.posY()).down(1)
		energia -= 9
	}

	method moverIzquierda() {
		self.validarPoderMoverme()
		posAntigua = position
		position = game.at(self.posX(), self.posY()).left(1)
		energia -= 9
	}

	method moverDerecha() {
		self.validarPoderMoverme()
		posAntigua = position
		position = game.at(self.posX(), self.posY()).right(1)
		energia -= 9
	}

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
		game.removeVisual(comida)
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

	method image() {
	if (nido.position() == self.position())
		{return "pepita-grande.png"}
	else if (silvestre.position() == self.position())
		{return "pepita-gris.png"}
	else if (energia <= 0)
		{return "pepita-gris.png"}
	else
		{return "pepita.png"}
	}

	method validarPoderMoverme() {
		if (energia < 9 )
		{self.error ("No tengo suficiente energia")}		
	}

	method gravedad() {
		posAntigua = position
		position = position.down(1)
	}

	method noPuedoAvanzar() {
		position = posAntigua
	}

	method perder() {
		game.say(self, "¡Perdí!")
		game.removeTickEvent("gravedad")
        game.schedule(2000, {game.stop()})
	  
	}

	method ganar() {
		game.say(self, "¡Gane!")
		game.removeTickEvent("gravedad")
        game.schedule(2000, {game.stop()})
	  
	}

}

