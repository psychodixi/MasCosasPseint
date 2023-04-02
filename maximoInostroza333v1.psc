Algoritmo sin_titulo
	
	//7 arreglos[5]
	//trabajar como base en este Algoritmo 
	// proyecto principal
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
	ventasDorada = 0
	ventaEstandar = 0
	sumaVentasDorada = 0
	sumaVentasEstandar = 0
	
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
	Definir cuotas, contadoOCuota, dia, mes, año Como Entero
	
	Dimension nomCliente[5]
	Dimension nomProductos[5]
	Dimension precProductos[5]
	Dimension famProductos[5]
	Dimension formPago[5]
	Dimension numCuotas[5]
	Dimension tarCuotas[5]
	Dimension contadoOCuota[5]
	
	Repetir
		Escribir "Bienvenido al supermercado ShowPrice"
		Escribir "------------------------------------"
		Escribir "1. Generar la venta del producto"
		Escribir "2. Mostrar el detalle de la venta"
		Escribir "3. Lista de todas las ventas"
		Escribir "4. Lista de las ventas pagadas con tarjeta de la tienda (Dorada y estándar)"
		Escribir "5. SALIR"
		Leer opc
		
		Segun opc Hacer
			1:	
				Escribir "Venta de productos"
				Escribir "------------------------------------"
				Escribir "Ingrese la fecha actual en formato DD/MM/AAAA"
				Escribir "------------------------------------"
				Escribir "Ingrese el día de la compra en formato DD"
				Leer dia
				Escribir "Ingrese el mes de la compra en formato MM"
				Leer mes
				Escribir "Ingrese el año de la compra en formato AAAA"
				Leer año
				Para i=0 Hasta 4 Con Paso 1 Hacer
					Escribir "Ingrese el nombre del cliente ", k
					Leer nomCliente[i]
					
					Escribir "Ingrese el nombre del producto ", k
					Leer nomProductos[i]
					
					Escribir "Ingrese el precio del producto ", k
					Leer precProductos[i]
					
					Escribir "Ingrese la familia del producto ", k
					Leer famProductos[i]
					
					Repetir
						Escribir "Ingrese la forma de pago"
						Escribir "Ingrese (dorada) o (estandar)"
						Escribir "Tarjeta Dorada"
						Escribir "Tarjeta Estandar"
						Leer formPago[i]
						si formPago[i] <> tarDorada y formPago[i] <> tarEstandar Entonces
							Escribir "La opción ingresada no es válida"
							Escribir "------------------------------------"
						FinSi
					Hasta Que formPago[i] = tarDorada o formPago[i] = tarEstandar
					
					Repetir
						Escribir "¿Con cuál tarjeta desea cancelar las cuotas?"
						Escribir "Ingrese (crédito) o (tienda)"
						Escribir "1. Tarjeta crédito"
						Escribir "2. Tarjeta tienda"
						Leer tarCuotas[i]
						si tarCuotas[i] <> tarCuotasCre o tarCuotas[i] <> tarCuotasTien Entonces
							Escribir "La opción ingresada no es válida"
							Escribir "------------------------------------"
						FinSi
					Hasta Que tarCuotas[i] = tarCuotasCre o tarCuotas[i] = tarCuotasTien
					
					Repetir
						Escribir "¿Cómo desea pagar?"
						Escribir "Ingrese la opción 1 o 2"
						Escribir "1. CONTADO (Pagar en el momento)"
						Escribir "2. CUOTAS (Pagar en cuotas)"
						Leer contadoOCuota[i]
						si contadoOCuota[i] <> 1 y contadoOCuota[i] <> 2 Entonces
							Escribir "La opción ingresada no es válida"
							Escribir "------------------------------------"
						FinSi
					Hasta Que contadoOCuota[i] = 1 o contadoOCuota[i] = 2
					
					
					si contadoOCuota[i] = 1 Entonces
						Escribir "Usted ha seleccionado pagar al contado"
						
					SiNo
						si contadoOCuota[i] = 2 Entonces
							Repetir
								Escribir "Ingrese el número de cuotas a pagar"
								Escribir "3 / 6 / 12 / 18 / 24 cuotas"
								Leer numCuotas[i]
								Segun numCuotas[i] Hacer
									3:
										Escribir "Usted ha seleccionado 3 cuotas"
									6:
										Escribir "Usted ha seleccionado 6 cuotas"
									12:
										Escribir "Usted ha seleccionado 12 cuotas"
									16:	
										Escribir "Usted ha seleccionado 16 cuotas"
									18:	
										Escribir "Usted ha seleccionado 18 cuotas"
									24:	
										Escribir "Usted ha seleccionado 24 cuotas"
									De Otro Modo:
										Escribir "La opción ingresada no es válida"
										Escribir "------------------------------------"
								Fin Segun
							Hasta Que numCuotas[i] = 3 o numCuotas[i] = 6 o numCuotas[i] = 12 o numCuotas[i] = 18 o numCuotas[i] = 24
						SiNo
							Escribir "Ha ingresado un valor incorrecto"
						FinSi
					FinSi
					
					
					si famProductos[i] = descComputacion Entonces
						
						precProductos[i] = precProductos[i] - (precProductos[i] * 0.4)
						
					SiNo
						
						si famProductos[i] = descElectronica Entonces
							
							precProductos[i] = precProductos[i] - (precProductos[i] * 0.35)
							
						FinSi
					FinSi
					
					si tarCuotas[i] = tarCuotasCre Entonces
						
						ventasCre = VentasCre + 1
					SiNo
						si tarCuotas[i] = tarCuotasTien Entonces
							
							ventasEstan = ventasEstan + 1
							
						FinSi
					FinSi
					
					
					
					si formPago[i] = tarDorada Entonces
						
						precProductos[i] = precProductos[i] - (precProductos[i] * 0.1)
						ventasDorada = ventasDorada + 1
						
					SiNo
						
						si formPago[i] = tarEstandar Entonces
							
							precProductos[i] = precProductos[i] - (precProductos[i] * 0.05)
							ventasEstandar = ventasEstandar + 1
							
						FinSi
						
					FinSi
					
					si tarCuotas[i] = tarCuotasCre Entonces
						si numCuotas[i] = 3 Entonces
							
							precProductosCuotaCre = (precProductos[i] / 3) + (precProductos[i] * cuotasCre3)
							
							tasaInteresCre = tasaInteresCre + cuotasCre3
							valCuotaCre = (precProductos[i] / 3) + (precProductos[i] * cuotasCre3)
							
							si numCuotas[i] = 6 Entonces
								
								precProductosCuotaCre = (precProductos[i] / 6) + (precProductos[i] * cuotasCre6)
								
								tasaInteresCre = tasaInteresCre + cuotasCre6
								valCuotaCre = (precProductos[i] / 6) + (precProductos[i] * cuotasCre6)
								
								si numCuotas[i] = 12 Entonces
									
									precProductosCuotaCre = (precProductos[i] / 12) + (precProductos[i] * cuotasCre12)
									
									tasaInteresCre = tasaInteresCre + cuotasCre12
									valCuotaCre = (precProductos[i] / 12) + (precProductos[i] * cuotasCre12)
									
									si	numCuotas[i] = 18 Entonces
										
										precProductosCuotaCre = (precProductos[i] / 18) + (precProductos[i] * cuotasCre18)
										
										tasaInteresCre = tasaInteresCre + cuotasCre18
										valCuotaCre = (precProductos[i] / 18) + (precProductos[i] * cuotasCre18)
										
										si numCuotas[i] = 24 Entonces
											
											precProductosCuotaCre = (precProductos[i] / 24) + (precProductos[i] * cuotasCre24)
											
											tasaInteresCre = tasaInteresCre + cuotasCre24
											valCuotaCre = (precProductos[i] / 24) + (precProductos[i] * cuotasCre24)
											
										FinSi
										
									FinSi
								FinSi
								
							FinSi
							
							si tarCuotas[i] = tarCuotasTien Entonces
								si numCuotas[i] = 3 Entonces
									
									precProductosCuotaTien = (precProductos[i] / 3) + (precProductos[i] * cuotasTien3)
									
									tasaInteresTien = tasaInteresTien + cuotasTien3
									valCuotaTien = (precProductos[i] / 3) + (precProductos[i] * cuotasTien3)
									
									si numCuotas[i] = 6 Entonces
										
										precProductosCuotaTien = (precProductos[i] / 6) + (precProductos[i] * cuotasTien6)
										
										tasaInteresTien = tasaInteresTien + cuotasTien6
										valCuotaTien = (precProductos[i] / 6) + (precProductos[i] * cuotasTien6)
										
										si numCuotas[i] = 12 Entonces
											
											precProductosCuotaTien = (precProductos[i] / 12) + (precProductos[i] * cuotasTien12)
											
											tasaInteresTien = tasaInteresTien + cuotasTien12
											valCuotaTien = (precProductos[i] / 12) + (precProductos[i] * cuotasTien12)
											
											si numCuotas[i] = 18 Entonces
												
												precProductosCuotaTien = (precProductos[i] / 18) + (precProductos[i] * cuotasTien18)
												
												tasaInteresTien = tasaInteresTien + cuotasTien18
												valCuotaTien = (precProductos[i] / 18) + (precProductos[i] * cuotasTien18)
												
												si numCuotas[i] = 24 Entonces
													
													precProductosCuotaTien = (precProductos[i] / 24) + (precProductos[i] * cuotasTien24)
													
													tasaInteresTien = tasaInteresTien + cuotasTien24
													valCuotaTien = (precProductos[i] / 24) + (precProductos[i] * cuotasTien24)
												FinSi
											FinSi
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
				Escribir "------------------------------------"
				Para j=0 Hasta 4 Con Paso 1 Hacer
					
					Escribir "El cliente ", nomCliente[j]
					Escribir "Con la fecha: " dia, "/", mes, "/", año
					Escribir "Ha comprado: ", nomProductos[j]
					Escribir "Con un precio total de ", redon(precProductos[j]), "$"
					Escribir "De la familia de productos: ", famProductos[j]
					Escribir "Ha pagado de manera: ", "tarjeta ", formPago[j]
					Escribir "Ha cancelado la compra con: ", "tarjeta ", tarCuotas[j]
					si contadoOCuota[j] = 2 Entonces
						Escribir "En un total de ", numCuotas[j], " cuotas"
					SiNo
						si contadoOCuota[j] = 1 Entonces
							Escribir "Ha pagado al contado"
							Escribir "En un total de ", precProductos[j], "$"
						FinSi
					FinSi
					
					si contadoOCuota[j] = 2 Entonces
						si tarCuotas[j] = tarCuotasTien Entonces
							Escribir "Con una tasa de interes del: ", tasaInteresTien * 100 "%"
							Escribir "El valor de cada cuota es de: ", precProductosCuotaTien
							FinSi
						SiNo
							si tarCuotas[j] = tarCuotasCre Entonces
								Escribir "Con una tasa de interes del: ", tasaInteresCre * 100 "%"
								Escribir "El valor de cada cuota es de: ", precProductosCuotaCre
								
							FinSi
						FinSi
						
					Escribir "------------------------------------"
					
					
				Fin Para
			3:	
				Escribir "Lista de todas las ventas"
				Escribir "------------------------------------"
				Escribir ""
				Escribir "A la fecha de: ", dia, "/", mes, "/", año, " Se han realizado un total de: ", ventas, " Ventas"
				Escribir ""
				Escribir "------------------------------------"
				
				Para l=0 Hasta 4 Con Paso 1 Hacer
					sumaVentas = sumaVentas + precProductos[l]
					Escribir "El cliente: ", nomCliente[l]
					Escribir "Ha realizado la compra de: ", nomProductos[l]
					Escribir "Por un total de: ", precProductos[l]
					Escribir "------------------------------------"
					
				Fin Para
				
				
				Escribir "Las ganancia del día: ", dia, "/", mes, "/", año, "," " En total es: ", sumaVentas, "$"
				Escribir "------------------------------------"
				
				
				
				
			4:	
				// arreglar esto, no muestra las de credito
				Escribir "Listas de las ventas pagadas"
				Escribir "------------------------------------"
				
				Escribir "Tarjetas dorada: "
				Para i=0 Hasta 4 Con Paso 1 Hacer
					si formPago[i] = tarDorada Entonces
						Para i=0 Hasta 4 Con Paso 1 Hacer
							Escribir "Lista de ventas pagadas con tarjeta dorada"
							Escribir "A la fecha de: ", fecha, " Se han realizado un total de: ", ventasDorada, " Ventas"
							Escribir "------------------------------------"
							Para i=0 Hasta 4 Con Paso 1 Hacer
								si formPago[i] = tarDorada Entonces
									sumaVentasDorada = sumaVentasDorada + precProductos[i]
									Escribir "El cliente: ", nomCliente[i]
									Escribir "Ha realizado la compra de: ", nomProductos[i]
									Escribir "Por un precio total de: ", precProductos[i], "$"
									Escribir "------------------------------------"
								FinSi
							Fin Para
						FinPara
					FinSi
					Escribir "El total de ventas es: ", sumaVentasDorada, "$"
				FinPara
				
				
				
				Escribir "------------------------------------"
				
				Escribir "Tarjetas estandar: "
				Para h=0 Hasta 4 Con Paso 1 Hacer
					si formPago[h] = tarEstandar Entonces
						Para h=0 Hasta 4 Con Paso 1 Hacer
							Escribir "Lista de ventas pagadas con tarjeta estandar:"
							Escribir "A la fecha de: ", dia, "/", mes, "/", año, "," " Se han realizado un total de: ", ventasEstandar, " Ventas"
							Escribir "------------------------------------"
							Para h=0 Hasta 4 Con Paso 1 Hacer
								si formPago[h] = tarEstandar Entonces
									sumaVentasEstandar = sumaVentasEstandar + precProductos[h]
									Escribir "El cliente ", nomCliente[h]
									Escribir "Ha realizado la compra de: ", nomProductos[h]
									Escribir "Por un precio total de: ", precProductos[h], "$"
									Escribir "------------------------------------"
								FinSi
							FinPara
						Fin Para
					FinSi
					Escribir "El total de ventas es: ", sumaVentasEstandar, "$"
				FinPara
				
			5:	
				Escribir "Opción salir"
				Escribir "------------------------------------"
				Escribir "Gracias por preferir su supermercado de confianza, ¡le deseamos un buen día y lo esperamos nuevamente!"
				res = 2
				
			De Otro Modo:
				Escribir "LA OPCIÓN INGRESADA ES INVALIDA"
				Escribir "------------------------------------"
				Escribir "¿Desea volver al menú inicial?"
				Escribir "1. SI"
				Escribir "2. NO"
				leer res
				
		Fin Segun
	Hasta Que res = 2
	
	
FinAlgoritmo
