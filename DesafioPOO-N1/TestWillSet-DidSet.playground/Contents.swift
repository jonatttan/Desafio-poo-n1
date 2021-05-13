import UIKit

class Abastecer{
    var contador: Int = Int(){
        willSet(novaContagem){
            print("Abastecer \(novaContagem) litros")
        }
        didSet{
            var novoValor = oldValue
            
            if contador > novoValor{
                print("Abasteceu \(contador + novoValor) litros")
            }
        }
    }
}

let abastecer = Abastecer()
abastecer.contador = 30
abastecer.contador = 50
abastecer.contador = 45
