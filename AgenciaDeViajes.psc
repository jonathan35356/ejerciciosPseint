
Algoritmo AgenciaDeViajes
	Definir playaPrecio,monta�aPrecio,ciudadPrecio,diasEstancia,costoTotal,destino,costoDia Como Entero
	definir descuento Como Real
	Definir deseaContinuar como caracter
	playaPrecio <- 500000
	monta�aPrecio <- 400000
	ciudadPrecio <- 300000
	Repetir
		Escribir "Bienvenido a la Agencia de Viajes"
        Escribir "Seleccione su destino:"
        Escribir "1. Playa: $500.000 por d�a"
        Escribir "2. Monta�a: $400.000 por d�a"
        Escribir "3. Ciudad: $300.000 por d�a"
        Leer destino
		Segun  destino Hacer
			1:
				costoDia <- playaPrecio
				Escribir "ha escogido la playa"
			2:
				costoDia <- monta�aPrecio
				Escribir "ha escogido la monta�a"
			3:
				costoDia <- ciudadPrecio
				Escribir "ha escogido la ciudad"
			De Otro Modo:
				Escribir "No existe ese destino"
				
		Fin Segun
		
		Escribir  "Cuantos dias desea quedarse?"
		Leer diasEstancia
		
		costoTotal <- costoDia * diasEstancia
		
		si diasEstancia >= 7 Entonces
			descuento <- 0.15 * costoTotal
			Escribir  "Se le hizo un descuento del 15%"
		SiNo
			si diasEstancia >= 3 Entonces
				descuento <- 0.10* costoTotal
				Escribir  "Se le hizo un descuento del 10%"
			SiNo
				descuento <- 0
				Escribir  "No se le hizo un descuento"
			FinSi
		FinSi
		costoTotal <- costoTotal - descuento
		Escribir "El costo de su viaje es:",costoTotal
		Escribir "Se le hizo un descuento de ",descuento
		Escribir "Por quedarse ",diasEstancia," Dias"
		Escribir "�Desea realizar otra reserva? (si/no)"
        Leer deseaContinuar
		
	Hasta Que deseaContinuar = "no"

	
	
FinAlgoritmo
