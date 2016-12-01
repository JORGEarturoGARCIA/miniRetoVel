//
//  ViewController.swift
//  auto
//
//  Created by jorge arturo Garcia on 27/11/16.
//  Copyright © 2016 jorge arturo Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}enum Velocidad : Int{
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    func calcularVelocidad () ->Int{
        return Velocidad.Apagado.rawValue - self.rawValue
    }
    init () {
        self = .Apagado
    }
}
var velocidad = Velocidad()


class Auto {
    

    }
    
    func cambioDeVelocidad()->(actual: Int, velocidadEnCadena: String){
        
        var actual : Int
        var velocidadEnCadena : String
        
        actual = velocidad.rawValue
        
        switch velocidad {
            
        case .Apagado:
            velocidad = Velocidad.VelocidadBaja
            velocidadEnCadena = "Apagado. "
            
        case .VelocidadBaja:
            velocidad = Velocidad.VelocidadMedia
            velocidadEnCadena = "Velocidad baja. "
            
        case .VelocidadMedia:
            velocidad = Velocidad.VelocidadAlta
            velocidadEnCadena = "Velocidad media. "
            
        case .VelocidadAlta:
            velocidad = Velocidad.VelocidadMedia
            velocidadEnCadena = "Velocidad Alta. "
        }
        
        return(actual, velocidadEnCadena)
    }



var auto = Auto()

