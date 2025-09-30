import wollok.game.*

object manzana {
	const base = 5
	var madurez = 1
	var property position = game.at(1, 8) 
	method image() {return "manzana.png"}

	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
	}

	method chocoCon(objeto) {
		objeto.comer(self)
	  
	}


}

object alpiste {
	var property position = game.at(7, 4)
	method image() {return "alpiste.png"}

	method energiaQueOtorga() {
		return 20
	} 

	method chocoCon(objeto) {
		objeto.comer(self)
	  
	}
}

