import personas.*
import objetos.*

object bolichito{
    var objetoEnVidriera = pelota
    var objetoEnMostrador = remera

    method objetoEnMostrador(objetoAPoner){
        objetoEnMostrador = objetoAPoner
    }
    method objetoEnVidriera(objetoAPoner){
        objetoEnVidriera = objetoAPoner
    }
    
    method esBrillante() {
        return objetoEnMostrador.material().brilla() &&
        objetoEnVidriera.material().brilla() 
    }

    method esMonocromatico(){
        return objetoEnMostrador.color() == objetoEnVidriera.color()
    }

    method estaEquilibrado(){
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }

    method tieneColor_(color){
        return objetoEnMostrador.color() == color || objetoEnVidriera.color() == color
    }

    method puedeMejorar(){
        return ! self.estaEquilibrado() ||
        self.esMonocromatico()
    }

    method puedeOfrecerleAlgo(persona){
        return
        persona.leGusta(objetoEnMostrador) ||
        persona.leGusta(objetoEnVidriera)
    }

    method intercambiarObjetos(){
        const aux = objetoEnMostrador
        objetoEnMostrador = objetoEnVidriera
        objetoEnVidriera = aux
    }
}