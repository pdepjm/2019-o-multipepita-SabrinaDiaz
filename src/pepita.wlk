object pepita {
	var energia = 0
	
	method energia() {
		return energia
	}
	
	method estaCansada() {
		return energia < 50
	}
	
	method salirAComer(){ // deposito y la casa de pepita son objetos ?
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
}

object mijo {
	var a = 0
	//var estaMojado = 1 //1 significa true, 0 es false
	
	//me devuelve 30 de energia despues de los pasos,creo que tengo un error acá
	method energiaQueOtorga() {/
		if(self.mojarse() == 15) {
		return self.mojarse()
		} else {
		return self.secarse()
	}
	}
	
	method mojarse(){
		a += 15
		} 
		
	method secarse(){
		a += 20
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
