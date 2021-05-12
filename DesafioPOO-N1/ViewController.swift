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
        // Do any additional setup after loading the view.
        bora()
    }
    func bora() {
        var listaFuncionarios: [Funcionario] = []

        let jorge = Desenvolvedor("Jorge Matias", 2500)
        listaFuncionarios.append(jorge)
        let fernando = Desenvolvedor("Ferndo Oliveira", 3500)
        listaFuncionarios.append(fernando)
        let lilian = Dba("Lilian Vieira", 2000)
        listaFuncionarios.append(lilian)
        let vinicius = Testador("Vinicius Garcia", 3000)
        listaFuncionarios.append(vinicius)
        let matias = Gerente("Matias Dourado", 6000)
        listaFuncionarios.append(matias)
        let viviane = Gerente("Viviane Cabral", 8000)
        listaFuncionarios.append(viviane)

        for funcionario in listaFuncionarios {
            funcionario.setSalarioLiquido()
            funcionario.exibeResumo()
        }
    }
}
