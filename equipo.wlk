class Partido {
	const jugadas = []
	var local
	var visitante

	method puntos(equipo){
		equipo.cantPuntos()
	}
}

class Equipo {
	const mundiales
	var tarjetas = 0
	var puntos = 0
	
	method camp(){
		return mundiales>0
	}
	
	method recibirTarjeta(cant){
		tarjetas += cant
	}
	
	method cantTarjetas() = tarjetas
	method cantPuntos() = puntos
}

class Jugada {
	var property equipo
	var ultToque
	var minuto
	var cir = []



	method convalidar(funcionamiento){
		if (self.NoHayCir()) {
			return true
		} else {
			return funcionamiento.conval(self)
		}
		
	}
	
	method NoHayCir() = cir.isEmpty()

	method funJust(){
		return cir.any{unaCircunstancia => justiciaCiega.queCir(unaCircunstancia)}
	}
	
	method ganoMund(){
		self.equipo().camp()
	}
}



object justiciaCiega {
	const palabras =["la pelota no pasó completamente la línea", "jugador adelantado", "fue con la mano"]
	
	method queCir(unaCircunstancia){
		return palabras.contains(unaCircunstancia)
		}
		
	method conval(jugada){
		return !(jugada.funJust())
	}
}



object fifa{
	
	method conval(equipo){
		return (equipo.ganoMund())
	}
}


object masGoles{
	method conval(partido) = true
}


class Falta {
	const hFalta = ""
	const rFalta = ""
	const minPar 
	const intensidad
	
	method sacarTarjeta() = intensidad>75


}


class Pelea{
	const involucrados =[]
	const minPar
	const equipo1
	const equipo2
	
	method sacarTarjeta(){
		if (self.cantInter()){
			equipo1.recibirTarjeta()
			equipo2.recibirTarjeta()
			return true
		}
		else return false
	}
	
	
	method cantInter() = involucrados.size()
}

class Insulto{
	const jugIns = ""
	const insultos = []
	const minPar
	
	method insulMadre() = insultos.contains("Madre")
	
	method sacarTarjeta() = self.insulMadre()
	
}



