import UIKit

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
    private func verificaDesconto(_ salario: Double, _ cargo: String) -> Double{
        
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
//
class Desenvolvedor: Funcionario {
    override init(_ nome: String, _ salario: Double) {
        super.init(nome, salario)
    }
}
class Dba: Funcionario {
    override init(_ nome: String, _ salario: Double) {
        super.init(nome, salario)
    }
}
class Testador: Funcionario {
    override init(_ nome: String, _ salario: Double) {
        super.init(nome, salario)
    }
}
class Gerente: Funcionario {
    override init(_ nome: String, _ salario: Double) {
        super.init(nome, salario)
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
    funcionario.setSalarioLiquido()
}
for funcionario in listaFuncionarios {
    funcionario.exibeResumo()
}

//Funcionario().setSalarioLiquido(jorge)
//jorge.exibeResumo()



