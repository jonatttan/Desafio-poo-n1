//
//  ViewController.swift
//  DesafioPOO-N1
//
//  Created by Jonattan Moises Sousa on 12/05/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        bora()
    }
    func bora() {
        var listaFuncionarios: [Funcionario] = []
        let listaCriaObjetos = [["GER","Silvonei Razuke",4500.0],["GER","Viviane Cabral",8000.0],["GER","Matias Dourado",6000.0],["TEST","Vinicius Garcia",3000.0],["DBA","Lilian Vieira",2000.0],["DEV","Ferndo Oliveira",3500.0],["DEV","Jorge Matias",2500.0],["DEV","Claudinei Santos",5000.0],["DEV","Silvana Amorim",1500.0],["DEV","Geovana Silva",2500.0],["DEV","Bianca Torres",3800.0],["DBA","Luana Silva",1500.0],["DBA","Bianca Torres",3800.0]]
        
        print("Total de funcionarios: \(listaFuncionarios.count)")
        for registro in listaCriaObjetos {
            guard let cargo = registro[0] as? String else { return }
            guard let nome = registro[1] as? String else { return }
            guard let salario = registro[2] as? Double else { return }
            if cargo == "DEV" {
                listaFuncionarios.append(Desenvolvedor(nome, salario))
            }
            if cargo == "DBA" {
                listaFuncionarios.append(Dba(nome, salario))
            }
            if cargo == "TEST" {
                listaFuncionarios.append(Testador(nome, salario))
            }
            if cargo == "GER" {
                listaFuncionarios.append(Gerente(nome, salario))
            }
        }
        // FUNCIONARIOS
        for funcionario in listaFuncionarios {
            funcionario.printaResumo()
        }
        print("Total de funcionarios: \(listaFuncionarios.count)")
    }
}
