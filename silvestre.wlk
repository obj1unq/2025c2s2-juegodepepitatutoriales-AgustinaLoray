import pepita.*


object silvestre {
    var property position = game.origin()

    method position() {
        return game.at(pepita.position().x(), 2)
      
    }
    method image() {
      return "silvestre.png"
    }
}