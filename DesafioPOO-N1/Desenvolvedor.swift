//
//  Desenvolvedor.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 12/05/21.
//

import Foundation

class Desenvolvedor: Funcionario, FuncionarioProtocol {
    override init(_ nome: String, _ salario: Double) {
        super.init(nome, salario)
    }
    override func getSalarioLiquido() -> Double {
        let pagamento = getSalario()
        let percDesconto = pagamento > 3000.0 ? 0.20 : 0.10
        return pagamento - (pagamento * percDesconto)
    }
    override func printaResumo() {
        super.printaResumo()
        print("Salário líquido \(getSalarioLiquido().formatDolar)")
        print("")
    }
//    override func printaResumo() {
//        print("Colaborador: \(getNome())")
//        print("Cargo: Desenvolvedor")
//        print("Salário bruto: \(getSalario())")
//        print("Salário líquido \(getSalarioLiquidoSuper(percDesconto ?? 0))")
//        print("")
//    }
}

