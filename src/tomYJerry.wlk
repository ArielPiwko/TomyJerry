/* comentario inutil ! ! ! */

object tom {
	var energia = 0

	method energia() {
		return energia
	}
	
	method velocidad() {
		 return 5 + energia / 10
	}
	
	method comer(raton) {
		energia = energia + self.energiaGanadaPorComer(raton)
	}
	
	method correr(unosSegundos) {
		energia = energia - self.energiaPerdidaPorCorrer(self.velocidad() * unosSegundos)
	}
	method energiaGanadaPorComer(raton) {
		return 12 + raton.gramos()
	}
	method energiaPerdidaPorCorrer(unaDistancia){
		return 0.5 * unaDistancia
	}
	method meConvieneComerA(unRaton, unaDistancia) {
		return self.energiaGanadaPorComer(unRaton) > self.energiaPerdidaPorCorrer(unaDistancia)
	}
}

object raton {
	var gramos = 100 
	
	method gramos() {
		return gramos
	}
}

//Lo que nos interesa de tom es manejar su energía y su velocidad, que dependen de sus actividades de
//comer ratones y de correr.
//La persona que registra las actividades de tom, registra los ratones que come y la cantidad de tiempo
//que corre en segundos.
//La velocidad de tom es 5 metros x segundo + (energia medida en joules / 10). 
//Cuando tom come un ratón, su energía aumenta en (12 joules + el peso del ratón en gramos).


//Cuando tom corre, su energía disminuye en (0.5 x cantidad de metros que corrió). Observar que la
//cuenta está en joules consumidos por metro, pero cuando me dicen cuánto corrió, me lo dicen en
//segundos. La velocidad que se toma es la que corresponde a la energía de Tom antes de empezar a
//correr, y no varía durante una carrera.
//Nota: además de tom, hay otros objetos en juego, ¿cuáles son, qué mensaje tienen que entender?  

//Lograr que tom entienda el mensaje meConvieneComerA: unRaton queEstaA: unaDistancia
//que devuelve true si la energía que gana por comer al ratón es mayor a la que consume corriendo la
//distancia, que está medida en metros.
