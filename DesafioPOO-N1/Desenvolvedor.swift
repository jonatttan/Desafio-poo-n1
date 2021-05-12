//
//  Desenvolvedor.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 12/05/21.
//

import Foundation

class Desenvolvedor: Funcionario, FuncionarioProtocol {
    var percDesconto: Double? 
    override init(_ nome: String, _ salario: Double) {
        super.init(nome, salario)
        percDesconto = salario > 3000.0 ? 0.20 : 0.10
    }
    func getSalarioLiquido() -> Double {
//        let pagamento = getSalario()
//        let percDesconto = pagamento > 3000.0 ? 0.20 : 0.10
//        return pagamento - (pagamento * percDesconto)
        return 0.0
    }
    override func printaResumo() {
        super.printaResumo()
        print("Salário líquido \(getSalarioLiquidoSuper(percDesconto ?? 0))")
        print("Cargo: Desenvolvedor")
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

