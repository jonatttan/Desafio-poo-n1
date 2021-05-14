//
//  Testador.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 12/05/21.
//

import Foundation

class Testador: Funcionario, FuncionarioProtocol {
    override init(_ nome: String, _ salario: Double) {
        super.init(nome, salario)
        // salario > 2500.0 ? 0.25 : 0.15
    }
    override func getSalarioLiquido() -> Double {
        let pagamento = getSalario()
        let percDesconto = pagamento > 2500.0 ? 0.25 : 0.15
        return pagamento - (pagamento * percDesconto)
    }
    override func printaResumo() {
        super.printaResumo()
        print("Salário líquido \(getSalarioLiquido().formatDolar)")
        print("")
    }
}
