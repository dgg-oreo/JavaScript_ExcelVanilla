Algoritmo Excel
	Definir filas, columnas Como Entero
	Definir celdas Como Cadena
	Definir valores Como Real
	Definir formulas Como Cadena
	Definir fila, columna Como Entero
	Definir entrada, respuesta Como Cadena
	filas <- 15
	columnas <- 10
	Dimensionar celdas(15,10)
	Dimensionar valores(15,10)
	Dimensionar formulas(15,10)
	InicializarCeldas(celdas,valores,formulas,filas,columnas)
	MostrarCuadricula(celdas,valores,filas,columnas)
	Repetir
		Escribir ''
		Escribir 'Ingrese la fila de la celda (1-15): '
		Leer fila
		Escribir 'Ingrese la columna de la celda (1-10): '
		Leer columna
		Si fila>=1 Y fila<=filas Y columna>=1 Y columna<=columnas Entonces
			Escribir 'Ingrese un valor:'
			Escribir 'Ejemplo: 25'
			Escribir 'Tambien puede ingresar una formula simple.'
			Escribir 'Ejemplo: =A1+B1'
			Leer entrada
			GuardarCelda(celdas,valores,formulas,fila,columna,entrada)
			MostrarCuadricula(celdas,valores,filas,columnas)
		SiNo
			Escribir 'ERROR: La fila o columna no es valida.'
		FinSi
		Escribir ''
		Escribir 'Desea modificar otra celda? (SI/NO)'
		Leer respuesta
	Hasta Que Mayusculas(respuesta)='NO'
FinAlgoritmo

Función InicializarCeldas(celdas,valores,formulas,filas,columnas)
	Definir i, j Como Entero
	Para i<-1 Hasta filas Hacer
		Para j<-1 Hasta columnas Hacer
			celdas[i,j]<-''
			valores[i,j]<-0
			formulas[i,j]<-''
		FinPara
	FinPara
FinFunción

Función GuardarCelda(celdas,valores,formulas,fila,columna,entrada)
	Definir numero Como Real
	celdas[fila,columna]<-entrada
	Si EsFormula(entrada) Entonces
		formulas[fila,columna]<-entrada
		Escribir 'Formula guardada correctamente.'
	SiNo
		formulas[fila,columna]<-''
		Si EsNumero(entrada) Entonces
			numero <- ConvertirANumero(entrada)
			valores[fila,columna]<-numero
			Escribir 'Valor guardado correctamente.'
		SiNo
			Escribir 'Se guardo como texto.'
		FinSi
	FinSi
FinFunción

Función resultado <- EsFormula(entrada)
	Definir resultado Como Lógico
	Si Longitud(entrada)>0 Entonces
		Si Subcadena(entrada,1,1)='=' Entonces
			resultado <- Verdadero
		SiNo
			resultado <- Falso
		FinSi
	SiNo
		resultado <- Falso
	FinSi
FinFunción

Función resultado <- EsNumero(entrada)
	Definir resultado Como Lógico
	resultado <- Verdadero
	Si Longitud(entrada)=0 Entonces
		resultado <- Falso
	SiNo
		Si EsFormula(entrada) Entonces
			resultado <- Falso
		FinSi
	FinSi
FinFunción

Función MostrarCuadricula(celdas,valores,filas,columnas)
	Definir i, j Como Entero
	Definir letra Como Cadena
	Escribir ''
	Escribir '     'Sin Saltar
	Para j<-1 Hasta columnas Hacer
		letra <- ObtenerColumna(j)
		Escribir letra, '        'Sin Saltar
	FinPara
	Escribir ''
	Para i<-1 Hasta filas Hacer
		Si i<10 Entonces
			Escribir '0', i, '   'Sin Saltar
		SiNo
			Escribir i, '   'Sin Saltar
		FinSi
		Para j<-1 Hasta columnas Hacer
			Si celdas[i,j]='' Entonces
				Escribir '[       ] 'Sin Saltar
			SiNo
				Escribir '[', celdas[i,j], '] 'Sin Saltar
			FinSi
		FinPara
		Escribir ''
	FinPara
FinFunción

Función letra <- ObtenerColumna(columna)
	Definir letra Como Cadena
	Según columna Hacer
		1:
			letra <- 'A'
		2:
			letra <- 'B'
		3:
			letra <- 'C'
		4:
			letra <- 'D'
		5:
			letra <- 'E'
		6:
			letra <- 'F'
		7:
			letra <- 'G'
		8:
			letra <- 'H'
		9:
			letra <- 'I'
		10:
			letra <- 'J'
	FinSegún
FinFunción
