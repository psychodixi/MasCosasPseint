Algoritmo sin_titulo
	
	//7 arreglos[5]
	
	k=1
	descComputacion = "computación"
	descElectronica = "electrónica"
	tarDorada = "dorada"
	tarEstandar = "estandar"
	tarCuotasCre = "crédito"
	tarcuotasTien = "tienda"
	
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
					Escribir "- Tarjeta Dorada"
					Escribir "- Tarjeta Estandar"
					Leer formPago[i]
					
					Escribir "¿Con cuál tarjeta desea cancelar las cuotas?"
					Escribir "Ingrese (crédito) o (tienda)"
					Escribir "- Tarjeta crédito"
					Escribir "- Tarjeta tienda"
					Leer tarCuotas[i]
					
					Escribir "Ingrese el número de cuotas a pagar"
					Escribir "3 / 6 / 12 / 18 / 24 cuotas"
					Leer numCuotas[i]
					
					
					
					si famProductos[i] = descComputacion Entonces
						
						precProductos[i] = precProductos[i] - (precProductos[i] * 0.4)
						
						si famProductos[i] = desElectronica Entonces
							
							precProductos[i] = precProductos[i] - (precProductos[i] * 0.35)
							
						FinSi
					FinSi
					
					
					
					si formPago[i] = tarDorada Entonces
						
						precProductos[i] = precProductos[i] - (precProductos[i] * 0.1)
						
						si formPago[i] = tarEstandar Entonces
							precProductos[i] = precProductos[i] - (precProductos[i] * 0.05)
							
						FinSi
					FinSi
					
					
					
					si tarCuotas[i] = tarCuotasCre Entonces
						
						si numCuotas[i] = 3 Entonces
							
							precProductosAUX = (precProductos[i] / 3) + (precProductos[i] * cuotasCre3)
							
							tasaInteresCre = tasainterescre + cuotasCre3
							valCuotaCre = (precProductos[i] / 3) + (precProductos[i] * cuotasCre3)
							
							si numCuotas[i] = 6 Entonces
								
								precProductosAUX = (precProductos[i] / 6) + (precProductos[i] * cuotasCre6)
								
								tasaInteresCre = tasainterescre + cuotasCre6
								valCuotaCre = (precProductos[i] / 6) + (precProductos[i] * cuotasCre6)
								
								si numCuotas[i] = 12 Entonces
									
									precProductosAUX = (precProductos[i] / 12) + (precProductos[i] * cuotasCre12)
									
									tasaInteresCre = tasainterescre + cuotasCre12
									valCuotaCre = (precProductos[i] / 12) + (precProductos[i] * cuotasCre12)
									
									si	numCuotas[i] = 18 Entonces
										
										precProductosAUX = (precProductos[i] / 18) + (precProductos[i] * cuotasCre18)
										
										tasaInteresCre = tasainterescre + cuotasCre18
										valCuotaCre = (precProductos[i] / 18) + (precProductos[i] * cuotasCre18)
										
										si numCuotas[i] = 24 Entonces
											
											precProductosAUX = (precProductos[i] / 24) + (precProductos[i] * cuotasCre24)
											
											tasaInteresCre = tasainterescre + cuotasCre24
											valCuotaCre = (precProductos[i] / 24) + (precProductos[i] * cuotasCre24)
											
										FinSi
										
									FinSi
								FinSi
								
							FinSi
							
							
						FinSi
						
					SiNo
						
						si tarCuotas[i] = tarCuotasTien Entonces
							si numCuotas[i] = 3 Entonces
								
								precProductosAUX = (precProductos[i] / 3) + (precProductos[i] * cuotasTien3)
								
								tasaInteresTien = tasaInteresTien + cuotasTien3
								valCuotaTien = (precProductos[i] / 3) + (precProductos[i] * cuotasTien3)
								
								si numCuotas[i] = 6 Entonces
									
									precProductosAUX = (precProductos[i] / 6) + (precProductos[i] * cuotasTien6)
									
									tasaInteresTien = tasaInteresTien + cuotasTien6
									valCuotaTien = (precProductos[i] / 6) + (precProductos[i] * cuotasTien6)
									
									si numCuotas[i] = 12 Entonces
										
										precProductosAUX = (precProductos[i] / 12) + (precProductos[i] * cuotasTien12)
										
										tasaInteresTien = tasaInteresTien + cuotasTien12
										valCuotaTien = (precProductos[i] / 12) + (precProductos[i] * cuotasTien12)
										
										si numCuotas[i] = 18 Entonces
											
											precProductosAUX = (precProductos[i] / 18) + (precProductos[i] * cuotasTien18)
											
											tasaInteresTien = tasaInteresTien + cuotasTien18
											valCuotaTien = (precProductos[i] / 18) + (precProductos[i] * cuotasTien18)
											
											si numCuotas[i] = 24 Entonces
												
												precProductosAUX = (precProductos[i] / 24) + (precProductos[i] * cuotasTien24)
												
												tasaInteresTien = tasaInteresTien + cuotasTien24
												valCuotaTien = (precProductos[i] / 24) + (precProductos[i] * cuotasTien24)
											FinSi
										FinSi
									FinSi
								FinSi
								
							FinSi
							
						FinSi
						
					FinSi
					
					
					
					K=k+1
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
					Escribir "Ha cancelado la compra con: ", "tarjeta ", tarCuotas[j], "," " En un total de ", numCuotas[j], " cuotas"
					Escribir precProductosAUX
					
					si tarCuotas[j] = tarCuotasCre Entonces
						Escribir "Con una tasa de interes del: ", tasainterescre * 100 "%"
						
					SiNo
						Escribir "Con una tasa de interes del: ", tasaInteresTien "%"
					FinSi
					
					si tarCuotas[j] = tarCuotasCre Entonces
						Escribir "El valor de cada cuota es de: ", redon(valCuotaCre) 
					FinSi
					si tarCuotas[j] = tarCuotasTien Entonces
						Escribir "El valor de cada cuota es de: ", redon(valCuotaTien)
					FinSi
					Escribir "------------------------------------"
				Fin Para
			3:
				
				
			4: 
			De Otro Modo:
				
		Fin Segun
		
		
		
		
	Hasta Que opc = 999
	
	
FinAlgoritmo
