//
//  Funcionario.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 12/05/21.
//

import Foundation

public protocol FuncionarioProtocol {
//    func getSalarioLiquido() -> Double
    func printaResumo()
    var percDesconto: Double? { get }
}
class Funcionario {
    private var nome: String
    private var salario: Double
    
    init(_ nome: String, _ salario: Double) {
        self.nome = nome
        self.salario = salario
    }
    func getSalarioLiquidoSuper(_ perc: Double) -> Double {
        return salario - (salario * perc)
    }
    func printaResumo() {
        print("")
        print("Colaborador: \(nome)")
        print("Salário bruto: \(salario)")
        
    }
}
