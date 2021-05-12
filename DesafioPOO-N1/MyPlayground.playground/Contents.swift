import UIKit

class Funcionario {
    var nome: String
    var salario: Double
    var salarioLiquido: Double
    
    init(_ nome: String, _ salario: Double) {
        self.nome = nome
        self.salario = salario
        self.salarioLiquido = 0
    }
    func calculoSalario(_ salario: Double, _ desconto: Double) -> Double {
        return salario - (salario * desconto)
    }
    func exibeResumo() {
        print("Colaborador: \(nome)")
        print("Salário bruto: \(salario)")
        print("Salário líquido \(salarioLiquido)")
        print("")
    }
}

class Desenvolvedor: Funcionario {
    override init(_ nome: String, _ salario: Double) {
        super.init(nome, salario)
        if salario > 0 {
            if salario > 3000 {
                self.salarioLiquido = calculoSalario(salario, 0.20)
            } else {
                self.salarioLiquido = calculoSalario(salario, 0.10)
            }
        }
    }
}
class Dba: Funcionario {
    override init(_ nome: String, _ salario: Double) {
        super.init(nome, salario)
        if salario > 0 {
            if salario > 2500 {
                self.salarioLiquido = calculoSalario(salario, 0.25)
            } else {
                self.salarioLiquido = calculoSalario(salario, 0.15)
            }
        }
    }
}
class Testador: Funcionario {
    override init(_ nome: String, _ salario: Double) {
        super.init(nome, salario)
        if salario > 0 {
            if salario > 2500 {
                self.salarioLiquido = calculoSalario(salario, 0.25)
            } else {
                self.salarioLiquido = calculoSalario(salario, 0.15)
            }
        }
    }
}
class Gerente: Funcionario {
    override init(_ nome: String, _ salario: Double) {
        super.init(nome, salario)
        if salario > 0 {
            if salario > 7000 {
                self.salarioLiquido = calculoSalario(salario, 0.23)
            } else {
                self.salarioLiquido = calculoSalario(salario, 0.18)
            }
        }
    }
}
let jorge = Desenvolvedor("Jorge Matias", 2500)
let fernando = Desenvolvedor("Ferndo Oliveira", 3500)
let lilian = Dba("Lilian Vieira", 2000)
let vinicius = Testador("Vinicius Garcia", 3000)
let matias = Gerente("Matias Dourado", 6000)
let viviane = Gerente("Viviane Cabral", 8000)


jorge.exibeResumo()
fernando.exibeResumo()
lilian.exibeResumo()
vinicius.exibeResumo()
matias.exibeResumo()
viviane.exibeResumo()



