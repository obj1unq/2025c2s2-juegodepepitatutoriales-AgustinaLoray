import pepita.*
import wollok.game.* 

object energiaPepita {
    var property position = game.at(8, 0) 
    method text () = "Energia de pepita" + " " +  pepita.energia()
}