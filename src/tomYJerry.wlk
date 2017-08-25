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

//Lo que nos interesa de tom es manejar su energ�a y su velocidad, que dependen de sus actividades de
//comer ratones y de correr.
//La persona que registra las actividades de tom, registra los ratones que come y la cantidad de tiempo
//que corre en segundos.
//La velocidad de tom es 5 metros x segundo + (energia medida en joules / 10). 
//Cuando tom come un rat�n, su energ�a aumenta en (12 joules + el peso del rat�n en gramos).


//Cuando tom corre, su energ�a disminuye en (0.5 x cantidad de metros que corri�). Observar que la
//cuenta est� en joules consumidos por metro, pero cuando me dicen cu�nto corri�, me lo dicen en
//segundos. La velocidad que se toma es la que corresponde a la energ�a de Tom antes de empezar a
//correr, y no var�a durante una carrera.
//Nota: adem�s de tom, hay otros objetos en juego, �cu�les son, qu� mensaje tienen que entender?  

//Lograr que tom entienda el mensaje meConvieneComerA: unRaton queEstaA: unaDistancia
//que devuelve true si la energ�a que gana por comer al rat�n es mayor a la que consume corriendo la
//distancia, que est� medida en metros.
