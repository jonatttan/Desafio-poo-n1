//
//  Gerente.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 12/05/21.
//

import Foundation

class Gerente: Funcionario, FuncionarioProtocol {
    override init(_ nome: String, _ salario: Double, calculadora: Calculadora = Calculadora(200.0)) {
        super.init(nome, salario, calculadora: CalculadoraGerente(salario))
        // salario > 7000.0 ? 0.23 : 0.18
    }
}
