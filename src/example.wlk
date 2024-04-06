object feroz {
	var peso = 10
	
	method estaSaludable() = peso.between(20,150)
	
	method subirDePeso(numero) {
		peso+= numero
	}
	
	method bajarDePeso(numero) {
		peso-= numero
	}
	
	method sufrirCrisis() {
		peso = 10
	}
	
	method comer(comida) {
		peso+= (comida.peso() * 0.10) 
	}
	
	method correr() {
		peso-= 1
	}
	
	method derribarCasas(tipoDeMaterial,cantDeChanchitos){
		if (peso < casa.resistencia(tipoDeMaterial,cantDeChanchitos))
		  self.sufrirCrisis()
		else 
		  self.bajarDePeso(casa.materialDe(tipoDeMaterial) + (cantDeChanchitos * 1))
    
    }
}


object caperucita{
	
	method peso() = 60 + manzanas.peso()
    
}

object abuelita{
	
	method peso()= 50 
    
}

object manzanas{
	var cantidad = 6
	
	method peso()= cantidad * 0.2 
    method cantidad(numero){cantidad = numero}
}

object cazador{
	
	method peso() = 90 
	method cazar(){ feroz.sufrirCrisis()}
}

object casa{
	
	method materialDe(material) = material.resistencia() 
	method resistencia(material,ocupantes) = material.resistencia() + ocupantes
}
object paja{
	method resistencia()=  0
	
}
object madera{
	method resistencia()=  5
	
}
object ladrillos{
	
	var cantLadrillos = 10
	
	method resistencia()=  2* cantLadrillos
	
	method agregarLadrillos(cantidad) {
		
		cantLadrillos += cantidad
	}
	
}


