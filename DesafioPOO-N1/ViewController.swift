//
//  ViewController.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 12/05/21.
//

import UIKit

enum CargoFuncionario: String, CodingKey {
    case DEV = "Desenvolvedor",
         GER = "Gerente",
         DBA = "Administrador de banco de dados",
         TEST = "Testador"
}
struct ListaFuncionarios {
    let cargo: CargoFuncionario
    let nome: String
    let salario: Double
    init(_ cargo: CargoFuncionario, _ nome: String, _ salario: Double) {
        self.cargo = cargo
        self.nome = nome
        self.salario = salario
    }
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        bora()
    }
    func bora() {
        let listaFunc: [ListaFuncionarios] = [
            ListaFuncionarios(.DBA, "Claudinei Santos", 2000.0), ListaFuncionarios(.GER, "Silvonei Razuke", 9000.0),
            ListaFuncionarios(.GER, "Viviane Cabral",8000.0), ListaFuncionarios(.GER, "Matias Dourado",6000.0),
            ListaFuncionarios(.TEST, "Vinicius Garcia",3000.0), ListaFuncionarios(.DBA, "Lilian Vieira",2000.0),
            ListaFuncionarios(.DEV, "Silvana Amorim",1500.0), ListaFuncionarios(.DEV, "Geovana Silva",2500.0),
            ListaFuncionarios(.DEV, "Bianca Torres",3800.0), ListaFuncionarios(.DBA, "Luana Silva",1500.0),
            ListaFuncionarios(.DBA, "Bianca Torres",3800.0)
        ]
        var listaFuncionarios: [Funcionario] = []
        
        listaFuncionarios = cadastraFuncionarios(listaFunc)
        exibeFuncionarios(listaFuncionarios)
    }
    func cadastraFuncionarios(_ lista: [ListaFuncionarios]) -> [Funcionario] {
        var listaFuncionarios: [Funcionario] = []
        for registro in lista {
            let cargo = registro.cargo
            let nome = registro.nome
            let salario = registro.salario
            switch(cargo) {
            case .DEV:
                listaFuncionarios.append(Desenvolvedor(nome, salario))
            case .DBA:
                listaFuncionarios.append(Dba(nome, salario))
            case .TEST:
                listaFuncionarios.append(Testador(nome, salario))
            case .GER:
                listaFuncionarios.append(Gerente(nome, salario))
            }
        }
        return listaFuncionarios
    }
    func exibeFuncionarios(_ lista: [Funcionario]) {
        for funcionario in lista {
            funcionario.printaResumo()
        }
        print("Total de funcionarios: \(lista.count)")
    }
}
