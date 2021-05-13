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
        var listaDesenvolvedores: [Desenvolvedor] = []
        var listaDba: [Dba] = []
        var listaTestadores: [Testador] = []
        var listaGerentes: [Gerente] = []
        
        let jorge = Desenvolvedor("Jorge Matias", 2500)
        listaDesenvolvedores.append(jorge)
        let fernando = Desenvolvedor("Ferndo Oliveira", 3500)
        listaDesenvolvedores.append(fernando)
        let lilian = Dba("Lilian Vieira", 2000)
        listaDba.append(lilian)
        let vinicius = Testador("Vinicius Garcia", 3000)
        listaTestadores.append(vinicius)
        let matias = Gerente("Matias Dourado", 6000)
        listaGerentes.append(matias)
        let viviane = Gerente("Viviane Cabral", 8000)
        listaGerentes.append(viviane)
        
        // DEV
        for funcionario in listaDesenvolvedores {
            funcionario.printaResumo()
        }
        
        // DBA
        for funcionario in listaDba {
            funcionario.printaResumo()
        }
        
        // TESTERS
        for funcionario in listaTestadores {
            funcionario.printaResumo()
        }
        
        // MANAGERS
        for funcionario in listaGerentes {
            funcionario.printaResumo()
        }
    }
}
