//
//  ViewController.swift
//  ColorGenerator
//
//  Created by Emirhan Erdogan on 28.10.2018.
//  Copyright © 2018 Apyist. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - UI Elements
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    // MARK: - Properties
    var redValue: CGFloat = 0.0
    var greenValue: CGFloat = 0.0
    var blueValue: CGFloat = 0.0

    var currentColor: UIColor = .black {
        willSet(newColor) {
            // currentValue değişkeni her değiştiğinde burası çalışacak ve yeni değer 'newColor' ile ifade edilecek
            colorView.backgroundColor = newColor
        }
    }
    
    // MARK: - Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.borderColor = UIColor.black.cgColor
    }
    
    // MARK: - Actions
    @IBAction func redSliderValueChanged(_ sender: UISlider) {
        // Tüm fonksiyonların ulaşabileceği redValue değerini günceller
        redValue = CGFloat(sender.value)
        currentColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
    
    @IBAction func greenSliderValueChanged(_ sender: UISlider) {
        // Tüm fonksiyonların ulaşabileceği greenValue değerini günceller
        greenValue = CGFloat(sender.value)
        currentColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
    
    @IBAction func blueSliderValueChanged(_ sender: UISlider) {
        // Tüm fonksiyonların ulaşabileceği blueValue değerini günceller
        blueValue = CGFloat(sender.value)
        currentColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.35) {
            // colorView'ın arkaplan rengini siyah ile değiştirir
            self.colorView.backgroundColor = .black
            
            // Tüm slider'ların value'larını 0.0 ile değiştir
            self.redSlider.setValue(0.0, animated: true)
            self.greenSlider.setValue(0.0, animated: true)
            self.blueSlider.setValue(0.0, animated: true)
        }
        
        // Tüm güncel renk değişkenlerini 0'a eşitle
        redValue = 0.0
        greenValue = 0.0
        blueValue = 0.0
    }
}
