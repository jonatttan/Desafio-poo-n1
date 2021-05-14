//
//  Testador.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 12/05/21.
//

import Foundation

class Testador: Funcionario, FuncionarioProtocol {
    override init(_ nome: String, _ salario: Double, calculadora: Calculadora = Calculadora(200.0)) {
        super.init(nome, salario, calculadora: CalculadoraTestador(salario))
        // salario > 2500.0 ? 0.25 : 0.15
    }
}
