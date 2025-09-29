import extras.*
import nido.*
import silvestre.*


object pepita {
	var energia = 500
	var property position = game.at(0,3)

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
		if (otrosObjetos.isEmpty() and direccion.hayTablero(position, 10, 10))
			{position = direccion.siguiente(position)
			energia = 0.max(energia - 9)}
	  
	}

	method validarPoderMoverme() {
		if (energia <= 0)
			{self.error ("No puedo moverme, no tengo mas energia")}
	}

	method gravedad() {
		self.moverSiPuedeA(abajo)
	}

}

