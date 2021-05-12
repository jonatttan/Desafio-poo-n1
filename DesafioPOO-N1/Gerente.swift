//
//  Gerente.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 12/05/21.
//

import Foundation

class Gerente: Funcionario, FuncionarioProtocol {
    var percDesconto: Double?
    
    override init(_ nome: String, _ salario: Double) {
        super.init(nome, salario)
        percDesconto = salario > 7000.0 ? 0.23 : 0.18
    }
    override func printaResumo() {
        super.printaResumo()
        print("Salário líquido \(getSalarioLiquidoSuper(percDesconto ?? 0))")
        print("Cargo: Gerente")
        print("")
    }
}
