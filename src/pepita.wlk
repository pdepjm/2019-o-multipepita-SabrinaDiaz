object pepita {
	var energia = 340
	
	method energia() {
		return energia
	}
	method estaCansada() {
		return energia < 50
	}
	method salirAComer(){ 
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	method vola(kms) {
		energia -= 10 + kms
	}
	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	method estaFeliz() {
		return energia.between(500, 1000)
	}
	method cuantoQuiereVolar() {
	
		var kmsBase = (energia/5) // kilometros que quiere volar
		
		return kmsBase + self.kmsEnergiaIntermedia() + self.kmsEnergiaMultiplo()
	}
	method kmsEnergiaIntermedia(){
			if (energia.between(300, 400)) {
				return 10
		} else {
			return 0
		}
}		
	method kmsEnergiaMultiplo(){
			if (energia % 20 == 0) {
				return 15
		}else {
			return 0
		}
}
	method haceLoQueQuieras(){
		if(self.estaCansada()){
		   self.come(alpiste)
		}
		if(self.estaFeliz()){
			self.vola(8)
		}
	}
	method entrenar(){
		self.vola(10)
		self.come(alpiste)
		self.vola(5)
		self.haceLoQueQuieras()
	}
}
object mijo {
	var estaMojado = false //se inicia una variable de estado, para tener con que comparar
	
	method energiaQueOtorga() {
		if(estaMojado) {
		return 15
		} else {
		return 20
	}
}
	method mojarse(){
		estaMojado = true
		} 
		
	method secarse(){
		estaMojado = false
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object canelon {
	var masaCanelon = 20
	var salsa = false
	var queso = false
	
	method energiaQueOtorga(){
		return masaCanelon + self.ponerSalsa() + self.ponerQueso()
	}	
	method ponerSalsa(){
			if(salsa){
				return 5
			} else {
				return 0
			}
}
    method ponerQueso(){
			if(queso){
				return 7
			} else {
				return 0
			}
}
	method tengoSalsa(){
		salsa = true
	}
	method seAcaboLaSalsa(){
		salsa =false
	}
	method tengoQueso(){
		queso = true
	}
	method seAcaboElQueso(){
		queso = false
	}
}

object roque {
	
	method entrenar(golondrina){
		golondrina.entrenar()
	}
}
