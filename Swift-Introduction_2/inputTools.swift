//
//  inputTools.swift
//  Swift-Introduction_2
//
//  Created by Jkutkut on 26/10/22.
//

import Foundation

func askDouble(question: String) -> Double {
    var input: String?
    while (true) {
        print(question, terminator: "")
        input = readLine()
        if let nbr = Double(input ?? "") {
            return nbr
        }
        print("El valor introducido no es un double válido")
    }
}

func askDoubleInRange(question: String, min: Double, max: Double) -> Double {
    var input: Double
    while true {
        input = askDouble(question: question)
        if (input >= min && input <= max) {
            return input
        }
        print(String(format: "El valor tiene que estar en el rango [%.5f, %.5f]", min, max))
    }
}

func askInt(question: String) -> Int {
    var input: String?
    while (true) {
        print(question, terminator: "")
        input = readLine()
        if let nbr = Int(input ?? "") {
            return nbr
        }
        print("El valor introducido no es un entero válido")
    }
}

func askIntInRange(question: String, min: Int, max: Int) -> Int {
    var input: Int
    while true {
        input = askInt(question: question)
        if (input >= min && input <= max) {
            return input
        }
        print(String(format: "El valor tiene que estar en el rango [%i, %i]", min, max))
    }
}

func askInRange(question: String, options: [String]) -> String {
    var input: String?
    while true {
        print(question, terminator: "")
        input = readLine()
        if (input != nil && options.contains(input!)) {
                return input!
        }
        print("Opción no encontrada. Opciones:", options)
    }
}
