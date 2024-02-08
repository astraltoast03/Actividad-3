//
//  ViewController.swift
//  act3
//
//  Created by Alumno on 07/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueValueLabel: UILabel!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var alphaValueLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Inicializar los sliders con el valor máximo
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        alphaSlider.value = 1
        // Actualizar la vista con los valores iniciales
        updateBackgroundColor()
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        // Actualizar los valores de los labels
        switch sender {
        case redSlider:
            redValueLabel.text = String(format: "%.2f", sender.value)
        case greenSlider:
            greenValueLabel.text = String(format: "%.2f", sender.value)
        case blueSlider:
            blueValueLabel.text = String(format: "%.2f", sender.value)
        case alphaSlider:
            alphaValueLabel.text = String(format: "%.2f", sender.value)
        default:
            break
        }
        // Actualizar el color de fondo de la imagen
        updateBackgroundColor()
    }

    func updateBackgroundColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        let alpha = CGFloat(alphaSlider.value)
        imageView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        
        imageView.alpha = CGFloat(alphaSlider.value)
    }
}
