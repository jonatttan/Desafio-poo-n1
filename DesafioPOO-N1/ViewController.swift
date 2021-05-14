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
        let listaCriaObjetos = [["GER","Silvonei Razuke",4500.0],["GER","Viviane Cabral",8000.0],["GE","Matias Dourado",6000.0],["TEST","Vinicius Garcia",3000.0],["DBA","Lilian Vieira",2000.0],["DEV","Ferndo Oliveira",3500.0],["DEV","Jorge Matias",2500.0],["DV","Claudinei Santos",5000.0],["DEV","Silvana Amorim",1500.0],["DEV","Geovana Silva",2500.0],["DEV","Bianca Torres",3800.0],["DBA","Luana Silva",1500.0],["DA","Bianca Torres",3800.0]]
        
        listaFuncionarios = cadastraFuncionarios(listaCriaObjetos)
        exibeFuncionarios(listaFuncionarios)
    }
    func exibeFuncionarios(_ lista: [Funcionario]) {
        for funcionario in lista {
            funcionario.printaResumo()
        }
        print("Total de funcionarios: \(lista.count)")
    }
}
