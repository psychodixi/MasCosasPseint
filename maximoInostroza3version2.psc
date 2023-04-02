Algoritmo sin_titulo
	
	//7 arreglos[5]
	//trabajar como base en este Algoritmo 
	
	k=1
	descComputacion = "computación"
	descElectronica = "electrónica"
	tarDorada = "dorada"
	tarEstandar = "estandar"
	tarCuotasCre = "crédito"
	tarCuotasTien = "tienda"
	
	ventas = 0
	VentasCre = 0
	ventasEstan = 0
	cuotasCre3 = 0.05
	cuotasCre6 = 0.08
	cuotasCre12 = 0.1
	cuotasCre18 = 0.15
	cuotasCre24 = 0.2
	
	cuotasTien3 = 0
	cuotasTien6 = 0.03
	cuotasTien12 = 0.05
	cuotasTien18 = 0.1
	cuotasTien24 = 0.15
	
	ventas = 0
	tasaInteresTien = 0
	tasaInteresCre = 0
	
	
	
	Definir nomCliente, nomProductos, famProductos, formPago, tarCuotas Como Caracter
	Definir precProductos Como Real
	Definir cuotas Como Entero
	
	
	Definir fecha Como Entero
	
	
	Dimension nomCliente[2]
	Dimension nomProductos[2]
	Dimension precProductos[2]
	Dimension famProductos[2]
	Dimension formPago[2]
	Dimension numCuotas[2]
	Dimension tarCuotas[2]
	
	Repetir
		Escribir "Bienvenido al supermercado ShowPrice"
		Escribir "------------------------------------"
		Escribir "1. Generar la venta del producto"
		Escribir "2. Mostrar el detalle de la venta"
		Escribir "3. Lista de todas las ventas"
		Escribir "4. Lista de las ventas pagadas con tarjeta de la tienda (Dorada y estándar)"
		Leer opc
		
		Segun opc Hacer
			1:	
				Escribir "Venta de productos"
				Escribir "------------------"
				Escribir "Ingrese la fecha actual en formato DD/MM/AAAA"
				Leer fecha
				Para i=0 Hasta 1 Con Paso 1 Hacer
					Escribir "Ingrese el nombre del cliente ", k
					Leer nomCliente[i]
					
					Escribir "Ingrese el nombre del producto ", k
					Leer nomProductos[i]
					
					Escribir "Ingrese el precio del producto ", k
					Leer precProductos[i]
					
					Escribir "Ingrese la familia del producto ", k
					Leer famProductos[i]
					
					Escribir "Ingrese la forma de pago"
					Escribir "Ingrese (dorada) o (estandar)"
					Escribir "Tarjeta Dorada"
					Escribir "Tarjeta Estandar"
					Leer formPago[i]
					
					Escribir "¿Con cuál tarjeta desea cancelar las cuotas?"
					Escribir "Ingrese (crédito) o (tienda)"
					Escribir "1. Tarjeta crédito"
					Escribir "2. Tarjeta tienda"
					Leer tarCuotas[i]
					
					Escribir "Ingrese el número de cuotas a pagar"
					Escribir "3 / 6 / 12 / 18 / 24 cuotas"
					Leer numCuotas[i]
					
					
					
					si famProductos[i] = descComputacion Entonces
						
						precProductos[i] = precProductos[i] - (precProductos[i] * 0.4)
						
					SiNo
						
						si famProductos[i] = descElectronica Entonces
							
							precProductos[i] = precProductos[i] - (precProductos[i] * 0.35)
							
						FinSi
					FinSi
					
					si tarCuotas[i] = "crédito" Entonces
						
						ventasCre = VentasCre + 1
						
					SiNo
						si tarCuotas[i] = "estandar" Entonces
							
							ventasEstan = ventasEstan + 1
						FinSi
						
					FinSi
					
					
					si formPago[i] = tarDorada Entonces
						
						precProductos[i] = precProductos[i] - (precProductos[i] * 0.1)
						
					SiNo
						si	formPago[i] = tarEstandar Entonces
							
							precProductos[i] = precProductos[i] - (precProductos[i] * 0.05)
							
						FinSi
						
						
					FinSi
					
					si tarCuotas[i] = tarCuotasCre Entonces
						
						si numCuotas[i] = 3 Entonces
							
							precProductos[i] = (precProductos[i] / 3) + (precProductos[i] * cuotasCre3)
							
							tasaInteresCre = tasainterescre + cuotasCre3
							valCuotaCre = (precProductos[i] / 3) + (precProductos[i] * cuotasCre3)
							
							si numCuotas[i] = 6 Entonces
								
								precProductos[i] = (precProductos[i] / 6) + (precProductos[i] * cuotasCre6)
								
								tasaInteresCre = tasainterescre + cuotasCre6
								valCuotaCre = (precProductos[i] / 6) + (precProductos[i] * cuotasCre6)
								
								si numCuotas[i] = 12 Entonces
									
									precProductos[i] = (precProductos[i] / 12) + (precProductos[i] * cuotasCre12)
									
									tasaInteresCre = tasainterescre + cuotasCre12
									valCuotaCre = (precProductos[i] / 12) + (precProductos[i] * cuotasCre12)
									
									si	numCuotas[i] = 18 Entonces
										
										precProductos[i] = (precProductos[i] / 18) + (precProductos[i] * cuotasCre18)
										
										tasaInteresCre = tasainterescre + cuotasCre18
										valCuotaCre = (precProductos[i] / 18) + (precProductos[i] * cuotasCre18)
										
										si numCuotas[i] = 24 Entonces
											
											precProductos[i] = (precProductos[i] / 24) + (precProductos[i] * cuotasCre24)
											
											tasaInteresCre = tasainterescre + cuotasCre24
											valCuotaCre = (precProductos[i] / 24) + (precProductos[i] * cuotasCre24)
											
										FinSi
										
									FinSi
								FinSi
								
							FinSi
						FinSi
						
					FinSi
					
					si tarCuotas[i] = tarCuotasTien Entonces
							si numCuotas[i] = 3 Entonces
								
								precProductos[i] = (precProductos[i] / 3) + (precProductos[i] * cuotasTien3)
								
								tasaInteresTien = tasaInteresTien + cuotasTien3
								valCuotaTien = (precProductos[i] / 3) + (precProductos[i] * cuotasTien3)
								si numCuotas[i] = 6 Entonces
									
									precProductos[i] = (precProductos[i] / 6) + (precProductos[i] * cuotasTien6)
									
									tasaInteresTien = tasaInteresTien + cuotasTien6
									valCuotaTien = (precProductos[i] / 6) + (precProductos[i] * cuotasTien6)
									
									si numCuotas[i] = 12 Entonces
										
										precProductos[i] = (precProductos[i] / 12) + (precProductos[i] * cuotasTien12)
										
										tasaInteresTien = tasaInteresTien + cuotasTien12
										valCuotaTien = (precProductos[i] / 12) + (precProductos[i] * cuotasTien12)
										
										si numCuotas[i] = 18 Entonces
											
											precProductos[i] = (precProductos[i] / 18) + (precProductos[i] * cuotasTien18)
											
											tasaInteresTien = tasaInteresTien + cuotasTien18
											valCuotaTien = (precProductos[i] / 18) + (precProductos[i] * cuotasTien18)
											
											si numCuotas[i] = 24 Entonces
												
												precProductos[i] = (precProductos[i] / 24) + (precProductos[i] * cuotasTien24)
												
												tasaInteresTien = tasaInteresTien + cuotasTien24
												valCuotaTien = (precProductos[i] / 24) + (precProductos[i] * cuotasTien24)
												
											FinSi
										FinSi
									FinSi
									
								FinSi
							FinSi
						FinSi
					
					K=k+1
					ventas = ventas + 1
				Fin Para
			2:
				Escribir "Detalles de la venta"
				Escribir "--------------------"
				Para j=0 Hasta 1 Con Paso 1 Hacer
					
					Escribir "El cliente ", nomCliente[j]
					Escribir "Con la fecha: ", fecha
					Escribir "Ha comprado: ", nomProductos[j]
					Escribir "Con un precio total de ", redon(precProductos[j])
					Escribir "De la familia de productos: ", famProductos[j]
					Escribir "Ha pagado de manera: ", "tarjeta ", formPago[j]
					Escribir "Ha cancelado la compra con: ", "tarjeta ", tarCuotas[j], " En un total de ", numCuotas[j], " cuotas"
					
					si tarCuotas[j] = tarCuotasTien Entonces
						Escribir "Con una tasa de interes del: ", tasaInteresTien * 100 "%"
						si valCuotaTien = 0 Entonces
							Escribir "El valor de cada cuota es de: ", precProductos[j] / 3
						FinSi
						
					FinSi
					si tarCuotas[j] = tarCuotasCre Entonces
						Escribir "Con una tasa de interes del: ", tasaInteresCre * 100 "%"
						Escribir "El valor de cada cuota es de: ", redon(valCuotaCre) 
					FinSi
					
					
					
					Escribir "------------------------------------"
					
					
				Fin Para
			3:	
				Escribir "Lista de todas las ventas"
				Escribir "-------------------------"
				Escribir ""
				Escribir "A la fecha de: ", fecha, " Se han realizado un total de: ", ventas, " Ventas"
				Escribir "-------------------------"
				
				Para l=0 Hasta 1 Con Paso 1 Hacer
					sumaVentas = sumaVentas + precProductos[l]
					Escribir "El cliente: ", nomCliente[l]
					Escribir "Ha realizado la compra de: ", nomProductos[l]
					
				Fin Para
				
				
				Escribir "Las ganancia del día: ", fecha, "," " En total son: ", sumaVentas, "$"
				Escribir "------------------------"
				
				
				
				
			4:	
				Escribir "Listas de las ventas pagadas"
				Escribir "----------------------------"
				// arreglar esto, no muestra las de credito
				Escribir "Ventas pagadas con tarjeta de crédito:"
				Para e=0 Hasta 1 Con Paso 1 Hacer
					si formPago[e] = "crédito" Entonces
						Escribir "Lista de ventas pagadas con tarjeta crédito"
						Escribir "A la fecha de: ", fecha, "Se han realizado un total de: ", ventasCre 
						Para e=0 Hasta 1 Con Paso 1 Hacer
							Escribir "El cliente: ", nomCliente[e]
							Escribir "Ha realizado la compra de: ", nomProductos[e]
						Fin Para
						
					FinSi
				FinPara
				
				Escribir "----------------------------"
				
				Escribir "Ventas pagadas con tarjetas estandar: "
				Para h=0 Hasta 1 Con Paso 1 Hacer
					si formPago[h] = "estandar" Entonces
						Escribir "Lista de ventas pagadas con tarjeta estandar:"
						Escribir "A la fecha de: ", fecha, "Se han realizado un total de: ", ventasEstan
						Para h=0 Hasta 1 Con Paso 1 Hacer
							Escribir "El cliente ", nomCliente[h]
							Escribir "Ha realizado la compra de: ", nomProductos[h]
						Fin Para
					FinSi
				Fin Para
				
				
				
				
			De Otro Modo:
		Fin Segun
		
		
		
		
	Hasta Que opc = 5
	
	
FinAlgoritmo
