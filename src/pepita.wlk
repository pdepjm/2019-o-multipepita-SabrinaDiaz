object pepita {
	var energia = 0
	
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
		//hay otra forma de hacer este metodo que no se utilizando if y else ?
		
		var kilometros = (energia/5) // kilometros que quiere volar
		
		if (energia.between(300, 400) && energia % 20 == 0) {
				return kilometros + 25
		
		} else if(energia % 20 == 0){
			   return kilometros + 15
			   
		} else if (energia.between(300, 400)) {
				return kilometros + 10
			} else {
				return kilometros
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
		if(salsa && queso) {
			return masaCanelon + 12
		} 
	   else if(queso){
			return masaCanelon + 7
		} 
		else if(salsa){
			return masaCanelon + 5
		} 
		return 0
}	
	method ponerSalsa(){
		salsa = true
	}
	method sacarSalsa(){
		salsa = false
	}
	method ponerQueso(){
		queso = true
	}
	method sacarQueso(){
		queso = false
	}
}

object roque {
	
	method entrenar(golondrina){
		golondrina.entrenar()
	}
}
