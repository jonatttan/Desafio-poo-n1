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
    
    init(_ nome: String, _ salario: Double) {
        self.nome = nome
        self.salario = salario
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
        print("Salário bruto: \(salario.formatDolar)")
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
