import UIKit

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
//
class Desenvolvedor: Funcionario {
    override init(_ nome: String, _ salario: Double) {
        super.init(nome, salario)
    }
}
class Dba: Funcionario {
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
class Gerente: Funcionario {
    override init(_ nome: String, _ salario: Double) {
        super.init(nome, salario)
        if salario > 0 {
            if salario > 7000 {
                self.salarioLiquido = calculoSalarioLiquido(salario, 0.23)
            } else {
                self.salarioLiquido = calculoSalarioLiquido(salario, 0.18)
            }
        }
    }
}

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
    Funcionario().setSalarioLiquido(funcionario)
    funcionario.exibeResumo()
}

//Funcionario().setSalarioLiquido(jorge)
//jorge.exibeResumo()



