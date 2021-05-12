//
//  Funcionario.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 12/05/21.
//

import Foundation

class Funcionario {
    private var nome: String
    private var salario: Double
    private var salarioLiquido: Double
    
    init(_ nome: String, _ salario: Double) {
        self.nome = nome
        self.salario = salario
        self.salarioLiquido = 0
    }
    func setSalarioLiquido() {
        let cargo = verificaCargo(self)
        let desconto = verificaDesconto(salario, cargo)
        salarioLiquido =
            calculoSalarioLiquido(salario, desconto)
    }
    private func verificaDesconto(_ salario: Double, _ cargo: String) -> Double {
        switch cargo {
        case "desenvolvedor":
            return salario > 3000.0 ? 0.20 : 0.10
        case "dba":
            return salario > 2500.0 ? 0.25 : 0.15
        case "testador":
            return salario > 2500.0 ? 0.25 : 0.15
        case "gerente":
            return salario > 7000.0 ? 0.23 : 0.18
        default:
            return 0
        }
    }
    private func verificaCargo(_ funcionario: Funcionario) -> String {
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
    private func calculoSalarioLiquido(_ salario: Double, _ desconto: Double) -> Double {
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

extension Funcionario {
    func retornaSalarioLiquido() -> Double {
        return salarioLiquido
    }
    func retornaNome() -> String {
        return nome
    }
    func retornaSalario() -> Double {
        return salario
    }
    func retornaCargo() -> String {
        return verificaCargo(self)
    }
}
