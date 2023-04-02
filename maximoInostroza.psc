   Algoritmo sin_titulo
	
	//7 arreglos[5]
	//trabajar como base en este Algoritmo 
	// proyecto principal
	k=1
	descComputacion = "computación"
	descElectronica = "electrónica"
	tarDorada = "dorada"
	tarEstandar = "estandar"
	tarCredito = "crédito"
	tarCuotasCre = "crédito"
	tarCuotasTien = "tienda"
	
	ventas = 0
	VentasCredito = 0
	ventasEstan = 0
	ventasDorada = 0
	ventaEstandar = 0
	sumaVentasDorada = 0
	sumaVentasEstandar = 0
	ventasTarTienda = 0

	
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
	tasaInteresCre = 0
	tasaInteresTien = 0
	
	Definir nomCliente, nomProductos, famProductos, formPago, tarCuotas Como Caracter
	Definir precProductos Como Real
	Definir cuotas, contadoOCuota, dia, mes, año Como Entero
	Definir encontrado Como Logico
	encontrado = falso
	
	Dimension nomCliente[5]
	Dimension nomProductos[5]
	Dimension precProductos[5]
	Dimension famProductos[5]
	Dimension formPago[5]
	Dimension numCuotas[5]
	Dimension tarCuotas[5]
	Dimension contadoOCuota[5]
	Dimension PrecProductoInicial[5]
	
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
				Repetir
					Escribir "Ingrese el día de la compra en formato DD"
					Leer dia
					si dia < 0 o dia > 32 Entonces
						Escribir "El día ingresado no es válido"
						Escribir "------------------------------------"
					FinSi
				Hasta Que dia >=1 y dia <= 31
				Repetir
					Escribir "Ingrese el mes de la compra en formato MM"
					Leer mes
					si mes <= 0 o mes > 12 Entonces
						Escribir "El mes ingresado no es válido"
						Escribir "------------------------------------"
					FinSi
				Hasta Que mes > 1 y mes < 13
				Repetir
					Escribir "Ingrese el año de la compra en formato AAAA"
					Leer año
					si año >= 2000 y año <= 3000 Entonces
						Escribir "------------------------------------"
					SiNo
						Escribir "El año ingresado no es válido"
						escribir "------------------------------------"
					FinSi
				Hasta Que año >= 2000 y año <= 3000
				
				Para i=0 Hasta 4 Con Paso 1 Hacer
					Escribir "Ingrese el nombre del cliente ", k
					Leer nomCliente[i]
					
					Escribir "Ingrese el nombre del producto ", k
					Leer nomProductos[i]
					
					Escribir "Ingrese el precio del producto ", k
					Leer precProductos[i]
					PrecProductoInicial[i] = precProductos[i] 
					
					Escribir "Ingrese la familia del producto ", k
					Leer famProductos[i]
					
					Repetir
						Escribir "Ingrese el método de pago: "
						Escribir "------------------------------------"
						Escribir "Para pagar con tarjetas bancarias: "
						Escribir "Ingrese (crédito)"
						Escribir "------------------------------------"
						Escribir "Para pagar con tarjetas de la tienda"
						Escribir "Ingrese (dorada) o (estandar)"
						Leer formPago[i]
						si formPago[i] <> tarDorada y formPago[i] <> tarEstandar y formPago[i] <> tarCredito Entonces
							Escribir "La opción ingresada no es válida"
							Escribir "------------------------------------"
						FinSi
					Hasta Que formPago[i] = tarDorada o formPago[i] = tarEstandar o formPago[i] = tarCredito
					
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
					
					si formPago[i] = tarEstandar Entonces
						
						ventasEstandar = ventasEstandar + 1
					SiNo
						si formPago[i] = tarDorada Entonces
							
							ventasDorada = ventasDorada + 1
						FinSi
						
					FinSi

					
					
					
					si formPago[i] = tarDorada Entonces
						
						precProductos[i] = precProductos[i] - (precProductos[i] * 0.1)
						ventasDorada = ventasDorada + 1
						ventasTarTienda = VentasTarTienda + 1
						
					SiNo
						
						si formPago[i] = tarEstandar Entonces
							
							precProductos[i] = precProductos[i] - (precProductos[i] * 0.05)
							ventasEstandar = ventasEstandar + 1
							ventasTarTienda = VentasTarTienda + 1
						SiNo
							si formPago[i] = tarCredito Entonces
								
								precProductos[i] = precProductos[i] * 1
								ventasCredito = ventasCredito + 1
							FinSi
							
						FinSi
						
					FinSi
					
					
				K=k+1
				ventas = ventas + 1
			Fin Para
				
				
				
				
				
				
			2:	//ingresar nombre y mostrar la venta
				Escribir "Detalles de la venta"
				Escribir "------------------------------------"
				Escribir "ingrese el nombre del cliente a buscar"
				Leer buscado
				
				Para j=0 Hasta 4 Con Paso 1 Hacer
					si buscado = nomCliente[j] Entonces
						Escribir "Resultado de: ", buscado
						Escribir "------------------------------------"
						Escribir "El cliente ", nomCliente[j]
						Escribir "Con la fecha: " dia, "/", mes, "/", año
						Escribir "Ha comprado: ", nomProductos[j]
						Escribir "Con un precio inicial de: ", PrecProductoInicial[j] "$"
						Escribir "Con un precio total de: ", redon(precProductos[j]), "$"
						Escribir "De la familia de productos: ", famProductos[j]
						Escribir "Ha pagado de manera: ", "tarjeta ", formPago[j]
						
						si contadoOCuota[j] = 2 Entonces
							Escribir "En un total de ", numCuotas[j], " cuotas"
							si numCuotas[j] = 0 Entonces
								Escribir "Con una tasa de interes del: ", "0%"
							SiNo
								si formPago[j] = tarDorada o formPago[j] = tarEstandar Entonces
									si numCuotas[j] = 3 Entonces
										Escribir "Con una tasa de interes del: 0%"
										valCuotaTien = (precProductos[j]/3) + (precProductos[j]*0)
										Escribir "El valor de cada cuota es de: ", valCuotaTien
									SiNo
										si numCuotas[j] = 6 Entonces
											Escribir "Con una tasa de interes del: 3%"
											valCuotaTien = (precProductos[j]/6) + (precProductos[j]*0.03)
											Escribir "El valor de cada cuota es de: ", valCuotaTien
										SiNo
											si numCuotas[j] = 12 Entonces
												Escribir "Con una tasa de interes del: 5%"
												valCuotaTien = (precProductos[j]/12) + (precProductos[j]*0.05)
												Escribir "El valor de cada cuota es de: ", valCuotaTien
											SiNo
												si numCuotas[j] = 18 Entonces
													Escribir "Con una tasa de interes del: 10%"
													valCuotaTien = (precProductos[j]/18) + (precProductos[j]*0.1)
													Escribir "El valor de cada cuota es de: ", valCuotaTien
												SiNo
													si numCuotas[j] = 24 Entonces
														Escribir "Con una tasa de interes del: 15%"
														valCuotaTien = (precProductos[j]/24) + (precProductos[l]*0.15)
														Escribir "El valor de cada cuota es de: ", valCuotaTien
													FinSi
												FinSi
											FinSi
										FinSi
									FinSi
								SiNo
									si tarCuotas[j] = tarCredito Entonces
										si numCuotas[j] = 3 Entonces
											Escribir "Con una tasa de interes del: 5%"
											valCuotaCre = (precProductos[j]/3) + (precProductos[j]*0.05)
											Escribir "El valor de cada cuota es de: ", valCuotaTien
										SiNo
											si numCuotas[j] = 6 Entonces
												Escribir "Con una tasa de interes del: 8%"
												valCuotaCre = (precProductos[j]/6) + (precProductos[j]*0.08)
												Escribir "El valor de cada cuota es de: ", valCuotaTien
											SiNo
												si numCuotas[j] = 12 Entonces
													Escribir "Con una tasa de interes del: 10%"
													valCuotaCre = (precProductos[j]/12) + (precProductos[j]*0.1)
													Escribir "El valor de cada cuota es de: ", valCuotaTien
												SiNo
													si numCuotas[j] = 18 Entonces
														Escribir "Con una tasa de interes del: 15%"
														valCuotaCre = (precProductos[j]/18) + (precProductos[j]*0.15)
														Escribir "El valor de cada cuota es de: ", valCuotaTien
													SiNo
														si numCuotas[j] = 24 Entonces
															Escribir "Con una tasa de interes del: 20%"
															valCuotaCre = (precProductos[j]/24) + (precProductos[j]*0.2)
															Escribir "El valor de cada cuota es de: ", valCuotaTien
														FinSi
													FinSi
												FinSi
											FinSi
										FinSi
										
									FinSi
									
								FinSi
							FinSi
							
						SiNo
							si contadoOCuota[j] = 1 Entonces
								Escribir "Ha pagado al contado"
								Escribir "En un total de ", precProductos[j], "$"
							FinSi
						FinSi
						
						encontrado = Verdadero
						si encontrado = Falso
							Escribir "El cliente ingresado no existe en el sistema "
						FinSi
						
						Escribir "------------------------------------"
					FinSi
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
					Escribir Sin Saltar "El cliente ", nomCliente[l], "," " con la fecha: " dia, "/", mes, "/", año, ",", " ha comprado: ", nomProductos[l], ",",  " con un precio inicial de: ", PrecProductoInicial[l] "$", ",", " con un precio total de: ", redon(precProductos[l]), "$", ",", " de la familia de productos: ", famProductos[l], ",", " ha pagado de con: ", "tarjeta ", formPago[l], ","
					
					escontrado = Verdadero
					si contadoOCuota[l] = 2 Entonces
						Escribir " En un total de ", numCuotas[l], " cuotas"
						si numCuotas[l] = 0 Entonces
							Escribir "Con una tasa de interes del: ", "0%"
						SiNo
							si tarCuotas[l] = tarCuotasTien Entonces
								si numCuotas[l] = 3 Entonces
									Escribir "Con una tasa de interes del: 0%"
									valCuotaTien = (precProductos[l]/3) + (precProductos[l]*1)
									Escribir "El valor de cada cuota es de: ", valCuotaTien
								SiNo
									si numCuotas[l] = 6 Entonces
										Escribir "Con una tasa de interes del: 3%"
										valCuotaTien = (precProductos[l]/6) + (precProductos[l]*0.03)
										Escribir "El valor de cada cuota es de: ", valCuotaTien
									SiNo
										si numCuotas[l] = 12 Entonces
											Escribir "Con una tasa de interes del: 5%"
											valCuotaTien = (precProductos[l]/12) + (precProductos[l]*0.05)
											Escribir "El valor de cada cuota es de: ", valCuotaTien
										SiNo
											si numCuotas[l] = 18 Entonces
												Escribir "Con una tasa de interes del: 10%"
												valCuotaTien = (precProductos[l]/18) + (precProductos[l]*0.1)
												Escribir "El valor de cada cuota es de: ", valCuotaTien
											SiNo
												si numCuotas[l] = 24 Entonces
													Escribir "Con una tasa de interes del: 15%"
													valCuotaTien = (precProductos[l]/24) + (precProductos[l]*0.15)
													Escribir "El valor de cada cuota es de: ", valCuotaTien
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
								
							SiNo
								si tarCuotas[l] = tarCuotasCre Entonces
									si numCuotas[l] = 3 Entonces
										Escribir "Con una tasa de interes del: 5%"
										valCuotaCre = (precProductos[l]/3) + (precProductos[l]*0.05)
										Escribir "El valor de cada cuota es de: ", valCuotaTien
									SiNo
										si numCuotas[l] = 6 Entonces
											Escribir "Con una tasa de interes del: 8%"
											valCuotaCre = (precProductos[l]/6) + (precProductos[l]*0.08)
											Escribir "El valor de cada cuota es de: ", valCuotaTien
										SiNo
											si numCuotas[l] = 12 Entonces
												Escribir "Con una tasa de interes del: 10%"
												valCuotaCre = (precProductos[l]/12) + (precProductos[l]*0.1)
												Escribir "El valor de cada cuota es de: ", valCuotaTien
											SiNo
												si numCuotas[l] = 18 Entonces
													Escribir "Con una tasa de interes del: 15%"
													valCuotaCre = (precProductos[l]/18) + (precProductos[l]*0.15)
													Escribir "El valor de cada cuota es de: ", valCuotaTien
												SiNo
													si numCuotas[l] = 24 Entonces
														Escribir "Con una tasa de interes del: 20%"
														valCuotaCre = (precProductos[l]/24) + (precProductos[l]*0.2)
														Escribir "El valor de cada cuota es de: ", valCuotaTien
													FinSi
												FinSi
											FinSi
										FinSi
									FinSi
									
								FinSi
								
							FinSi
						FinSi
						
					SiNo
						si contadoOCuota[l] = 1 Entonces
							Escribir " ha pagado al contado", ","
							Escribir " En un total de ", precProductos[l], "$"
						FinSi
					FinSi
					Escribir "------------------------------------"
					
				Fin Para
				
				
				Escribir "Las ganancia del día: ", dia, "/", mes, "/", año, "," " En total es: ", sumaVentas, "$"
				Escribir "------------------------------------"
				
				
				
				
			4:	
				// arreglar esto, no muestra las de credito
				Escribir "Listas de las ventas pagadas"
				Escribir "------------------------------------"
				
				Escribir "Tarjetas tarjetas tienda: "
				Escribir ""
				Para i=0 Hasta 4 Con Paso 1 Hacer
					si formPago[i] = tarDorada o formPago[i] = tarEstandar Entonces
						Para i=0 Hasta 4 Con Paso 1 Hacer
							Escribir "Lista de ventas pagadas con tarjetas de la tienda"
							Escribir "A la fecha de: ", fecha, " Se han realizado un total de: ", ventasTarTienda, " Ventas"
							Escribir "------------------------------------"
							Para i=0 Hasta 4 Con Paso 1 Hacer
								si formPago[i] = tarDorada o formPago[i] = tarEstandar Entonces
									sumaVentasTienda = sumaVentasTienda + precProductos[i]
									Escribir "El cliente: ", nomCliente[i]
									Escribir "Ha realizado la compra de: ", nomProductos[i]
									Escribir "Por un precio total de: ", precProductos[i], "$"
									Escribir "------------------------------------"
								FinSi
							Fin Para
						FinPara
					FinSi
					Escribir "El total de ventas es: ", sumaVentasTienda, "$"
				FinPara
				
				
				
				Escribir "------------------------------------"
				
				Escribir "Tarjetas de crédito: "
				Escribir ""
				Para h=0 Hasta 4 Con Paso 1 Hacer
					si formPago[h] = tarCredito Entonces
						Para h=0 Hasta 4 Con Paso 1 Hacer
							Escribir "Lista de ventas pagadas con tarjeta de crédito:"
							Escribir "A la fecha de: ", dia, "/", mes, "/", año, "," " Se han realizado un total de: ", ventasCredito, " Ventas"
							Escribir "------------------------------------"
							Para h=0 Hasta 4 Con Paso 1 Hacer
								si formPago[h] = tarCredito Entonces
									sumaVentasCredito= sumaVentasCredito + precProductos[h]
									Escribir "El cliente ", nomCliente[h]
									Escribir "Ha realizado la compra de: ", nomProductos[h]
									Escribir "Por un precio total de: ", precProductos[h], "$"
									Escribir "------------------------------------"
								FinSi
							FinPara
						Fin Para
					FinSi
					Escribir "El total de ventas es: ", sumaVentasCredito, "$"
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
