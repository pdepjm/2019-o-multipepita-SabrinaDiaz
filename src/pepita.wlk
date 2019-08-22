object pepita {
	var energia = 340

    
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
		return energia.between(500, 1000)
	}
	
	method cuantoQuiereVolar() {
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
