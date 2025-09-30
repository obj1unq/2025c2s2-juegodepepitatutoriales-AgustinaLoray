object izquierda {
    method siguiente(position) {
        return position.left(1)
    }

    method hayTablero(position, ancho, alto) {
        return self.siguiente(position) .x() >= 0
     } 
}

object derecha {
    
    method hayTablero (position, ancho, alto) {
        return self.siguiente(position).x() <= ancho -1
    }

    method siguiente(position) {
        return position.right(1)
    }
  
}

object abajo {
    method siguiente(position) {
        return position.down(1)
    }

    method hayTablero(position, ancho,alto) {
        return self.siguiente(position).y()>= 0
    } 
}

object arriba {
   method siguiente(position) {
        return position.up(1)
    }

     method hayTablero(position, ancho,alto) {
        return self.siguiente(position).y() <= alto -1
     } 
}

object paleta {
    const property verde = "00FF00FF"
    const property rojo = "FF0000FF"
  
}