//
//  Gerente.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 12/05/21.
//

import Foundation

class Gerente: Funcionario, FuncionarioProtocol {
    override init(_ nome: String, _ salario: Double) {
        super.init(nome, salario)
        // salario > 7000.0 ? 0.23 : 0.18
    }
    override func getSalarioLiquido() -> Double {
        let pagamento = getSalario()
        let percDesconto = pagamento > 7000.0 ? 0.23 : 0.18
        return pagamento - (pagamento * percDesconto)
    }
    override func printaResumo() {
        super.printaResumo()
        print("Salário líquido \(getSalarioLiquido().formatDolar)")
        print("")
    }
}
