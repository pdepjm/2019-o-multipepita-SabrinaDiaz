object pepita {
	var energia = 340
	var kilometros = 0
    
	method estaCansada() {
		return energia < 50
	}
	
	method salirAComer(){
		
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
		
	method estaFeliz() {
		return energia > 500  && energia  < 1000
	}
	
	method cuantoQuiereVolar() {
		return (energia/5)
	}
	
	method aumentarKmsSegunEnergia(kms) {
		if(energia > 300 && energia < 400) {
		return kms.sumarKilometros(10) + self.cuantoQuiereVolar()
		} else {
		}
	}
	method sumarKilometros(cantidad) {
		kilometros = cantidad + self.cuantoQuiereVolar()
		
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
