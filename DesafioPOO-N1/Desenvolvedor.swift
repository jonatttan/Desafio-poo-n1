//
//  Desenvolvedor.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 12/05/21.
//

import Foundation

class Desenvolvedor: Funcionario, FuncionarioProtocol {
    override init(_ nome: String, _ salario: Double, calculadora: Calculadora = Calculadora(200.0)) {
        super.init(nome, salario, calculadora: CalculadoraDev(salario))
        // salario > 3000.0 ? 0.20 : 0.10
    }
}

