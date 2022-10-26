//
//  main.swift
//  Swift-Introduction_2
//
//  Created by Jkutkut on 26/10/22.
//

import Foundation

// ************* TOOLS *************
// See file inputTools

// ************* CODE *************
// See file exercises

// ************* LOOP *************

let EJERCICIOS = [ej1, ej2, ej3, ej4, ej5, ej6, ej7, ej8, ej9, ej10]
var ej: Int;
print("Hola! Vamos a ejecutar varios ejercicios:")
while true {
    print("Introduce el ejercicio que quieres revisar (0 para salir):")
    ej = askIntInRange(question: "$> ", min: 0, max: EJERCICIOS.count)
    if ej == 0 {
        break
    }
    print()
    EJERCICIOS[ej - 1]()
    print("\n\n")
}

print("Gracias por su verificación")


