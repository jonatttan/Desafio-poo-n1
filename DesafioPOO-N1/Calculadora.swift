//
//  Calculadora.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 14/05/21.
//

import Foundation

class Calculadora {
    var salario: Double
    init(_ salario: Double) {
        self.salario = salario
    }
    public func descontosDefault() -> Double {
        print("FUncionario sem cargo")
        return salario
    }
}
class CalculadoraDev: Calculadora {
    override func descontosDefault() -> Double {
        let percDesconto = salario > 3000.0 ? 0.20 : 0.10
        return salario - (salario * percDesconto)
        
    }
}
class CalculadoraDba: Calculadora {
    override func descontosDefault() -> Double {
        let percDesconto = salario > 2500.0 ? 0.25 : 0.15
        return salario - (salario * percDesconto)
    }
}
class CalculadoraTestador: Calculadora {
    override func descontosDefault() -> Double {
        let percDesconto = salario > 2500.0 ? 0.25 : 0.15
        return salario - (salario * percDesconto)
    }
}
class CalculadoraGerente: Calculadora {
    override func descontosDefault() -> Double {
        let percDesconto = salario > 7000.0 ? 0.23 : 0.18
        return salario - (salario * percDesconto)
    }
}
