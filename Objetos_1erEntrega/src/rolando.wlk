import hechizos.*
import artefactosDeLucha.*
import refuerzosArmadura.*

object rolando {
	
	var hechizoPreferido
	var valorFuerzaOscura = 5
	var artefactosDeLucha = []
	var valorBase = 1
	
	//punto 1	
	method valorFuerzaOscura(){
		return valorFuerzaOscura
	}
	method valorFuerzaOscura(unValor){
		valorFuerzaOscura=unValor
	}
	method nivelBase (){
		return 3
	}
	method hechizoPreferido(unHechizo){
		hechizoPreferido=unHechizo
	} 
	method nivelDeHechiceria(){
		return ( (self.nivelBase() * self.poderHechizoPreferido()) +  self.valorFuerzaOscura())
	}
	method poderHechizoPreferido(){
		return hechizoPreferido.poder()
	}
	method eclipse(){
		self.valorFuerzaOscura(valorFuerzaOscura * 2)
	}
	method esPoderoso(){
		return hechizoPreferido.esPoderoso()
	}

     	//  punto 2 //
	
	method valorBase(unValor){
		valorBase= valorBase + unValor
	}
	
	method valorBase(){
		return valorBase
	}
	
	method agregarArtefacto(unArtefacto){
		artefactosDeLucha.add(unArtefacto)
		unArtefacto.dueno(self)
		self.valorBase(unArtefacto.aportar())
	}
	method quitarArtefacto(unArtefacto){
		artefactosDeLucha.remove(unArtefacto)
		self.valorBase(-(unArtefacto.aportar()))
	}
	
    method artefactosDeLucha(){
	    return artefactosDeLucha
    }   
    
    method estaCargado(){
	return self.artefactosDeLucha().size() >= 5
	
	}
	
//	method objetoMasPoderoso(){
//	return self.artefactosDeLucha().max{unArtefacto => unArtefacto.aportar()}
 //   }  
 
 }
