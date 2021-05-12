//
//  Testador.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 12/05/21.
//

import Foundation

class Testador: Funcionario {
    override init(_ nome: String, _ salario: Double) {
        super.init(nome, salario)
        if salario > 0 {
            if salario > 2500 {
                self.salarioLiquido = calculoSalarioLiquido(salario, 0.25)
            } else {
                self.salarioLiquido = calculoSalarioLiquido(salario, 0.15)
            }
        }
    }
}
