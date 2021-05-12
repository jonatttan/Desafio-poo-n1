//
//  Testador.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 12/05/21.
//

import Foundation

class Testador: Funcionario, FuncionarioProtocol {
    var percDesconto: Double?
    
    override init(_ nome: String, _ salario: Double) {
        super.init(nome, salario)
        percDesconto = salario > 2500.0 ? 0.25 : 0.15
    }
    override func printaResumo() {
        super.printaResumo()
        print("Salário líquido \(getSalarioLiquidoSuper(percDesconto ?? 0))")
        print("Cargo: Testador")
        print("")
    }
}
