import nido.*
import silvestre.*

object pepita {
	var energia = 100
	var property position = game.origin()

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
	
	if (nido.position() == pepita.position())
		{return "pepita-grande.png"}
	else if (silvestre.position() == pepita.position())
		{return "pepita-gris.png"}
	else
		{return "pepita.png"}
	}

	method mover(direccion) {
	  position = direccion.siguiente(position)
	}
	
}

