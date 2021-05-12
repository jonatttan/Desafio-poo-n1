//
//  FuncionarioTest.swift
//  DesafioPOO-N1Tests
//
//  Created by Jonattan Moises Sousa on 12/05/21.
//

import XCTest
@testable import DesafioPOO_N1

class FuncionarioTest: XCTestCase {
    var funcionario: Funcionario!
    
    override func setUp() {
        funcionario = Funcionario("Julio", 1400.0)
    }

    override func tearDown() {
    }
    
    func testDeveRetornarSalarioIgualZero() {
        let salarioLiquido = funcionario.retornaSalarioLiquido()
        XCTAssertEqual(0.0, salarioLiquido)
    }
    func testSeRetornaCargoFuncionario() {
        let cargo = funcionario.retornaCargo()
        XCTAssertEqual("Sem Definicao", cargo)
    }
}

//class FuncionarioTest: XCTestCase {
//
//    override func setUp() {
//    }
//
//    override func tearDown() {
//    }
//}
