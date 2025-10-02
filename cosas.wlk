object knightRider {
	var property peso = 500
	var property nivelPeligrosidad = 10
}

object arenaAGranel {
	var property peso = 1
	var property nivelPeligrosidad = 1
}

object bumbelbee {
	var property peso = 800

	var property nivelPeligrosidad = self.nivelPeligrosidadActual()

	var property estado = "auto"

	method nivelPeligrosidadActual(){
		if(self.esUnAuto(self)){
			return 15
		} else {
			return 30
		}
	}

	method esUnAuto(transformer){
		return transformer.estado()=="auto"
	}
}

object paqueteDeLadrillos {
	var property peso = ladrillos * 2

	var property ladrillos =  1

	const property nivelPeligrosidad = 2
}

object bateriaAntiaerea {
	var property peso = self.calcularPeso()

	var property nivelPeligrosidad = self.calcularPeligrosidad()

	var property estadoInicial = "cargada" 

	var property estado = estadoInicial

	method calcularPeso(){
		if(estado == "cargada"){
			return 300
		} else {
			return 200
		}
	} 

	method calcularPeligrosidad(){
		if(estado == "cargada"){
			return 100
		} else {
			return 0
		}
	}
}


object residuosRadiactivos {
	var property peso = 1
	var property nivelPeligrosidad = 200
}

