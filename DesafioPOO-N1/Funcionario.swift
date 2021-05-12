//
//  Funcionario.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 12/05/21.
//

import Foundation

class Funcionario {
    var nome: String
    var salario: Double
    var salarioLiquido: Double
    
    init() {
        self.nome = ""
        self.salario = 0
        self.salarioLiquido = 0
    }
    init(_ nome: String, _ salario: Double) {
        self.nome = nome
        self.salario = salario
        self.salarioLiquido = 0
    }
    public func setSalarioLiquido(_ funcionario: Funcionario) {
        let cargo = verificaCargo(funcionario)
        let desconto = verificaDesconto(funcionario.salario, cargo)
        funcionario.salarioLiquido =
            calculoSalarioLiquido(funcionario.salario, desconto)
    }
    func verificaDesconto(_ salario: Double, _ cargo: String) -> Double{
        if cargo == "desenvolvedor" {
            if salario > 3000.0 {
                return 0.20
            } else {
                return 0.10
            }
        }
        if cargo == "dba" || cargo == "testador" {
            if salario > 2500.0 {
                return 0.25
            } else {
                return 0.15
            }
        }
        if cargo == "gerente" {
            if salario > 7000.0 {
                return 0.23
            } else {
                return 0.18
            }
        }
        return 0
    }
    func verificaCargo(_ funcionario: Funcionario) -> String {
        if funcionario is Desenvolvedor {
            return "desenvolvedor"
        }
        if funcionario is Dba {
            return "dba"
        }
        if funcionario is Testador {
            return "testador"
        }
        if funcionario is Gerente {
            return "gerente"
        }
        return "Sem Definicao"
    }
    func calculoSalarioLiquido(_ salario: Double, _ desconto: Double) -> Double {
        return salario - (salario * desconto)
    }
    func exibeResumo() {
        print("Colaborador: \(nome)")
        print("Cargo: \(verificaCargo(self))")
        print("Salário bruto: \(salario)")
        print("Salário líquido \(salarioLiquido)")
        print("")
    }
}
