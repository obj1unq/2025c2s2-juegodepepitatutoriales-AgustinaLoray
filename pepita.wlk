import extras.*
import nido.*
import silvestre.*


object pepita {
	var energia = 500
	var property position = game.at(0,3)

	method position() {
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

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
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

	method mover(direccion) {
		self.validarPoderMoverme()
		self.moverSiPuedeA(direccion)
	}

	method moverSiPuedeA(direccion) {
		const otrosObjetos = game.getObjectsIn(direccion.siguiente(position))
		if (otrosObjetos.isEmpty() && direccion.limiteDelTablero())
			{position= direccion.siguiente()
			energia = 0.max(energia - 9)}
	  
	}

	method validarPoderMoverme() {
		if (energia <= 0)
			{self.error("No puedo moverme, no tengo mas energia")}
	}

	method gravedad() {
		position = position.down(1)
	  
	}

	method chocaCon(obejto) {
		


	}
}

