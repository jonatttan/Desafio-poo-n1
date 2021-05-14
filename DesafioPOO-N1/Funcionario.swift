//
//  Funcionario.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 12/05/21.
//

import Foundation

public protocol FuncionarioProtocol {
    func getSalarioLiquido() -> Double
    func printaResumo()
}
class Funcionario {
    private var nome: String
    private var salario: Double
    var funcCalculo: Calculadora
    
    init(_ nome: String, _ salario: Double, calculadora: Calculadora = Calculadora(200.0)) {
        self.nome = nome
        self.salario = salario
        self.funcCalculo = calculadora
    }
    func getNome() -> String {
        return nome
    }
    func getSalario() -> Double {
        return salario
    }
    func getSalarioLiquido() -> Double {
        return salario - (salario * 0.8)
    }
    func printaResumo() {
        print("Colaborador: \(nome)")
        print("Cargo: \(type(of: self))")
        print("Salário bruto: \(salario.formatDolar)")
        print("Salário líquido: \(self.funcCalculo.descontosDefault().formatDolar)")
        print("")
    }
}

public extension Double {
    
    var formatDolar: String { return formatadorDolar(valor: self) }
    func formatadorDolar(valor: Double) -> String {
        let valorNS = NSNumber(value: valor)
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = "USD"
        guard let valorFormatado = formatter.string(from: valorNS) else { return ""}
        return valorFormatado
    }
}
