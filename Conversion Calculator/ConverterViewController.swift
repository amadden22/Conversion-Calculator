//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Aidan Madden on 11/9/17.
//  Copyright © 2017 Aidan Madden. All rights reserved.
//

import UIKit
class ConverterViewController: UIViewController {
    
    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var outputDisplay: UITextField!
    @IBAction func convertButton(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Choose Converter", message: "", preferredStyle: .actionSheet)
       
        alert.addAction(UIAlertAction(title: "farenheit to celcius", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = "°C"
            self.inputDisplay.text = "°F"
        }))
        
        alert.addAction(UIAlertAction(title: "celcius to farenheit", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = "°F"
            self.inputDisplay.text = "°C"

        }))
        
        alert.addAction(UIAlertAction(title: "miles to kilometers", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = "km"
            self.inputDisplay.text = "mi"

        }))
        
        alert.addAction(UIAlertAction(title: "kilometers to miles", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = "mi"
            self.inputDisplay.text = "km"

        }))
        
        
        
        self.present(alert, animated: true, completion: nil)
    }

    override func viewDidLoad(){
    super.viewDidLoad()
    self.outputDisplay.text = "°C"
    self.inputDisplay.text = "°F"
        struct converter {
        var label: String = "farenheit to celcius"
        var inputUnit: String = "°F"
        var outputUnit: String = "°C"
    }
    var list: [converter] = []
    list.append(converter())
    list.append(converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"))
    list.append(converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"))
    list.append(converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi"))
    }


}

