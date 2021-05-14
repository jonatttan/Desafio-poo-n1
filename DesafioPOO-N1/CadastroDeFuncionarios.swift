//
//  CadastroDeFuncionarios.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 14/05/21.
//

import Foundation

extension ViewController {
    func cadastraFuncionarios(_ lista: [[Any]]) -> [Funcionario] {
        var listaFuncionarios: [Funcionario] = []
        for registro in lista {
            guard let cargo = registro[0] as? String else { return listaFuncionarios }
            guard let nome = registro[1] as? String else { return listaFuncionarios }
            guard let salario = registro[2] as? Double else { return listaFuncionarios }
            if cargo == "DEV" {
                listaFuncionarios.append(Desenvolvedor(nome, salario))
            }
            else if cargo == "DBA" {
                listaFuncionarios.append(Dba(nome, salario))
            }
            else if cargo == "TEST" {
                listaFuncionarios.append(Testador(nome, salario))
            }
            else if cargo == "GER" {
                listaFuncionarios.append(Gerente(nome, salario))
            }
            else {
                print("Cargo '\(cargo)' não encontrado, não cadastramos \(nome)")
                print("")
            }
        }
        return listaFuncionarios
    }
}
