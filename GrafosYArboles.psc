Algoritmo GrafosYArboles
    Definir eleccion1 Como Entero
    Definir eleccionGrafo1 Como Entero
    Definir numVertices Como Entero
    Definir numAristas Como Entero
    Definir i, j Como Entero
    Definir verticeInicio Como Entero
    Definir verticeFin Como Entero
    Definir gradoMaximo Como Entero
    Definir esDirigido Como Logico
	Definir  grados Como Entero
	Definir aristas Como Entero
	Definir matrizAdyacencia Como Entero
    
	Limpiar Pantalla
	Escribir "------------------------"
	Escribir "Ingrese un grafo o un arbol"
	Escribir "------------------------"
	Escribir "Grafo: 1  "
	Escribir "Arbol: 2"
	Escribir "------------------------"
    Leer eleccion1
	
    Segun eleccion1 Hacer
        1:
			Limpiar Pantalla
            Escribir "Elije el tipo de grafo"
			Escribir "------------------------"
			Escribir "Grafo: 1  "
			Escribir "Matriz adyacencia: 2"
			Escribir "------------------------"
            Leer eleccionGrafo1
            
            Segun eleccionGrafo1 Hacer
                1:
					Limpiar Pantalla
					
                    Escribir "Ingrese el número de vértices:"
                    Leer numVertices
					Escribir "------------------------"
                    Escribir "Ingrese el número de aristas:"
                    Leer numAristas
                    
                    Dimension aristas[numAristas + 1, 2]
                    Dimension grados[numVertices + 1]
                    
                    Para i <- 1 Hasta numVertices Hacer
                        grados[i] <- 0
                    FinPara
                    
                    esDirigido <- FALSO
                    
                    Para i <- 1 Hasta numAristas Hacer
						Limpiar Pantalla
                        Escribir "Arista ", i, ": Ingrese el vértice de inicio:"
                        Leer verticeInicio
						Escribir "------------------------"
                        Escribir "Arista ", i, ": Ingrese el vértice de destino:"
                        Leer verticeFin
                        
                        aristas[i, 1] <- verticeInicio
                        aristas[i, 2] <- verticeFin
                        
                        grados[verticeInicio] <- grados[verticeInicio] + 1
                        grados[verticeFin] <- grados[verticeFin] + 1
                        
                        Si verticeInicio <> verticeFin Entonces
                            Si aristas[i, 1] <> aristas[i, 2] Entonces
                                esDirigido <- VERDADERO
                            FinSi
                        FinSi
                    FinPara
                    
                    Si esDirigido Entonces
						Limpiar Pantalla
						Escribir "El grafo es dirigido."
						Escribir "------------------------"
                    SiNo
						Limpiar Pantalla
						Escribir "El grafo es no dirigido."
						Escribir "------------------------"
                    FinSi
                    
                    Escribir "Grado de cada vértice:"
                    Para i <- 1 Hasta numVertices Hacer
                        Escribir "Vértice ", i, ": Grado = ", grados[i]
                    FinPara
                    
                    gradoMaximo <- 0
                    Para i <- 1 Hasta numVertices Hacer
                        Si grados[i] > gradoMaximo Entonces
                            gradoMaximo <- grados[i]
                        FinSi
                    FinPara
				   Escribir "------------------------"
                    Escribir "Grado del grafo (grado máximo): ", gradoMaximo
                    
                2: 
                    Escribir "Ha seleccionado ingresar el grafo mediante una matriz de adyacencia."
                    Escribir "Ingrese el número de vértices del grafo:"
                    Leer numVertices
                    
                    Dimension matrizAdyacencia[numVertices + 1, numVertices + 1]
                    Para i <- 1 Hasta numVertices Hacer
                        Para j <- 1 Hasta numVertices Hacer
                            matrizAdyacencia[i, j] <- 0
                        FinPara
                    FinPara
                    
                    Escribir "Ingrese la matriz de adyacencia (0 o 1 para cada par de vértices):"
                    Para i <- 1 Hasta numVertices Hacer
                        Para j <- 1 Hasta numVertices Hacer
                            Escribir "¿Hay una arista entre el vértice ", i, " y el vértice ", j, "? (1 para sí, 0 para no):"
                            Leer matrizAdyacencia[i, j]
                        FinPara
                    FinPara
                    
                    esDirigido <- FALSO
                    Para i <- 1 Hasta numVertices Hacer
                        Para j <- i + 1 Hasta numVertices Hacer
                            Si matrizAdyacencia[i, j] <> matrizAdyacencia[j, i] Entonces
                                esDirigido <- VERDADERO
                            FinSi
                        FinPara
                    FinPara
                    
                    Si esDirigido Entonces
                        Escribir "El grafo es dirigido."
                    SiNo
                        Escribir "El grafo es no dirigido."
                    FinSi
                    
                    Dimension grados[numVertices + 1]
                    Para i <- 1 Hasta numVertices Hacer
                        grados[i] <- 0
                    FinPara
                    
                    Para i <- 1 Hasta numVertices Hacer
                        Para j <- 1 Hasta numVertices Hacer
                            Si matrizAdyacencia[i, j] = 1 Entonces
                                grados[i] <- grados[i] + 1
                            FinSi
                        FinPara
                    FinPara
                    
                    Escribir "Grado de cada vértice:"
                    Para i <- 1 Hasta numVertices Hacer
                        Escribir "Vértice ", i, ": Grado = ", grados[i]
                    FinPara
                    
                    gradoMaximo <- 0
                    Para i <- 1 Hasta numVertices Hacer
                        Si grados[i] > gradoMaximo Entonces
                            gradoMaximo <- grados[i]
                        FinSi
                    FinPara
                    Escribir "Grado del grafo (grado máximo): ", gradoMaximo
					
                De Otro Modo:
                    Escribir "Error en la elección"
            FinSegun
            
			
			
        2:
			
			
			
            Escribir "Ha seleccionado ingresar un árbol (pendiente de implementar)"
			
			Definir opc Como Cadena
			Definir opcArbol, opcGrafo Como Cadena
			
			Definir padre, root Como Entero 
			
			Definir NodoRaiz, Hijos, Vertices, CantidadHijos Como Entero
			Dimensionar NodoRaiz(100), Hijos(100,100), Vertices(100), CantidadHijos(100);
			
			
			Definir contador, n, i, k, vertice Como Entero
			
			
			Definir hayRaiz Como Lógico 
			
			Repetir
				Limpiar Pantalla
				Escribir 'Escoje una opcion.........'
				Escribir '______________________'
				Escribir '(1)   Arboles'
				Escribir '(2)   Cerrar programa'
				Leer opc
				Según opc Hacer
			'1':
				Limpiar Pantalla
				// Ingresar la arquitectura del grafo
				Escribir 'Ingrese el numero de vertices del arbol'
				Leer n
				// Inicializar variables
				Para i<-1 Hasta n Hacer
					CantidadHijos[i] <- 0
					Vertices[i] <- 0
					NodoRaiz[i] <- 0 // 0 indica que no tiene padre
				FinPara
				Limpiar Pantalla
				Para i<-1 Hasta n Hacer
					Escribir 'Ingrese el nodo padre de ', i, ' (o -1 si es la raíz):' 
					Leer NodoRaiz[i]
					Si NodoRaiz[i]=-1 & contador<1 Entonces
						contador<-contador+1
						hayRaiz <- Verdadero
						root <- i
					SiNo
						CantidadHijos[NodoRaiz[i]] <- CantidadHijos[NodoRaiz[i]]+1
						Hijos[NodoRaiz[i],CantidadHijos[NodoRaiz[i]]]<-i
						Vertices[NodoRaiz[i]] <- 1
					FinSi
				FinPara
				Repetir // Marca como vértice interno
					Si hayRaiz=Falso Entonces
						Limpiar Pantalla
						Escribir 'No se definió solo una raíz. El árbol es inválido.'
						Esperar Tecla
						Limpiar Pantalla
						Para i<-1 Hasta n Hacer
							Escribir 'Ingrese el nodo padre de ', i, ' (o -1 si es la raíz):'
							Leer NodoRaiz[i]
							Si NodoRaiz[i]=-1 & contador<1 Entonces
								contador<-contador+1
								hayRaiz <- Verdadero
								root <- i
							SiNo
								CantidadHijos[NodoRaiz[i]] <- CantidadHijos[NodoRaiz[i]]+1
								Hijos[NodoRaiz[i],CantidadHijos[NodoRaiz[i]]]<-i
								Vertices[NodoRaiz[i]] <- 1
							FinSi
						FinPara
					FinSi // Marca como vértice interno
				Hasta Que hayRaiz=Verdadero
				Repetir
					Limpiar Pantalla
					Escribir 'Submenú Árboles'
					Escribir 'a. Mostrar la raíz del árbol'
					Escribir 'b. Padre de un vértice específico'
					Escribir 'c. Hijos de un vértice específico'
					Escribir 'd. Hermanos de un vértice específico'
					Escribir 'e. Antecesores de un vértice específico'
					Escribir 'f. Descendientes de un vértice específico'
					Escribir 'g. Vértices internos'
					Escribir 'h. Hojas'
					Escribir 'i. Subárbol con raíz en un vértice específico'
					Escribir 'j. Volver al menú principal'
					Leer opcArbol
					Según opcArbol Hacer
				'a':
					Limpiar Pantalla
					Escribir 'La raíz del árbol es: ', root
					Esperar Tecla
				'b':
					Limpiar Pantalla
					Escribir 'Ingrese el vértice para encontrar su padre:'
					Leer vertice
					Si NodoRaiz[vertice]<>-1 Entonces
						Escribir 'El padre del vértice ', vertice, ' es: ', NodoRaiz[vertice]
					SiNo
						Escribir 'El vértice ', vertice, ' es la raíz y no tiene padre.'
					FinSi
					Esperar Tecla
				'c':
					Limpiar Pantalla
					Escribir 'Ingrese el vértice para encontrar sus hijos:'
					Leer vertice
					Si CantidadHijos[vertice]>0 Entonces
						Escribir 'Los hijos del vértice ', vertice, ' son:'
						Para i<-1 Hasta CantidadHijos[vertice] Hacer
							Escribir Hijos[vertice,i]
						FinPara
					SiNo
						Escribir 'El vértice ', vertice, ' no tiene hijos.'
					FinSi
					Esperar Tecla
				'd':
					Limpiar Pantalla
					Escribir 'Ingrese el vértice para encontrar sus hermanos:'
					Leer vertice
					padre <- NodoRaiz[vertice]
					Si padre<>-1 Entonces
						Escribir 'Los hermanos del vértice ', vertice, ' son:'
						Para i<-1 Hasta CantidadHijos[padre] Hacer
							Si Hijos[padre,i]<>vertice Entonces
								Escribir Hijos[padre,i]
							FinSi
						FinPara
					SiNo
						Escribir 'El vértice ', vertice, ' es la raíz y no tiene hermanos.'
					FinSi
					Esperar Tecla
				'e':
					Limpiar Pantalla
					Escribir 'Ingrese el vértice para encontrar sus antecesores:'
					Leer vertice
					Mientras vertice<>-1 Hacer
						vertice <- NodoRaiz[vertice]
						Si vertice<>-1 Entonces
							Escribir vertice
						FinSi
					FinMientras
					Esperar Tecla
				'f':
					Limpiar Pantalla
					Escribir 'Ingrese el vértice para encontrar sus descendientes:'
					Leer vertice
					Escribir 'Los descendientes de ', vertice, ' son:'
					Para i<-1 Hasta n Con Paso 1 Hacer
						Para k<-1 Hasta CantidadHijos[i] Con Paso 1 Hacer
							Escribir Hijos[i,k];
						FinPara
					FinPara
					Esperar Tecla
				'g':
					Limpiar Pantalla
					Escribir 'Los vértices internos del árbol son:'
					Para i<-1 Hasta n Hacer
						Si Vertices[i]=1 Entonces
							Escribir i
						FinSi
					FinPara
					Esperar Tecla
				'h':
					Limpiar Pantalla
					Escribir 'Las hojas del árbol son:'
					Para i<-1 Hasta n Hacer
						Si Vertices[i]=0 Entonces
							Escribir i
						FinSi
					FinPara
					Esperar Tecla
				'i':
					Limpiar Pantalla
					Escribir 'Ingrese el vértice raíz del subárbol:'
					Leer vertice
					Escribir 'El subárbol con raíz en ', vertice, ' es:'
					Para i<-1 Hasta n Con Paso 1 Hacer
						Para k<-1 Hasta CantidadHijos[i] Con Paso 1 Hacer
							Escribir Hijos[i,k];
						FinPara
					FinPara
					Esperar Tecla
				'j':
					Limpiar Pantalla
					Escribir 'Volviendo al menú principal...'
				De Otro Modo:
					Escribir 'Opción inválida.'
					Esperar Tecla
			FinSegún
		Hasta Que opcArbol='j'
	'2':
		Limpiar Pantalla
		Escribir 'Adios'
	De Otro Modo:
		Limpiar Pantalla
		Escribir opc, ' Esta no es una opción correcta, por favor intentalo de nuevo'
		Escribir 'Pulsa una tecla para continuar...'
				Esperar Tecla
		FinSegún
	Hasta Que (opc=='2')
			
        De Otro Modo:
            Escribir "Error en la elección"
    FinSegun
FinAlgoritmo