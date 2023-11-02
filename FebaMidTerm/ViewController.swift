//
//  ViewController.swift
//  FebaMidTerm
//
//  Created by user234888 on 11/1/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var findCityButton: UIButton!
    @IBOutlet weak var cityImage: UIImageView!
    @IBOutlet weak var cityName: UITextField!
    
    @IBOutlet weak var varA: UITextField!
    @IBOutlet weak var varB: UITextField!
    @IBOutlet weak var varC: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func findCity(_ sender: Any) {
        if let userInput = cityName.text {
                switch userInput.lowercased() {
                case "calgary":
                    cityImage
                        .image = UIImage(named: "Calgary")
                case "halifax":
                    cityImage.image = UIImage(named: "Halifax")
                case "montreal":
                    cityImage
                        .image = UIImage(named: "Montreal")
                case "toronto":
                    cityImage.image = UIImage(named: "Toronto")
                case "vancouver":
                    cityImage
                        .image = UIImage(named: "Vancouver")
                case "winniped":
                    cityImage.image = UIImage(named: "Winnipeg")
                default:
                    cityImage.image = UIImage(named: "Canada")
                }
            }    }
    
    
    @IBAction func findResult(_ sender: Any) {
        if let textA = varA.text, let textB = varB.text, let textC = varC.text,
           let a = Double(textA), let b = Double(textB), let c = Double(textC) {

            let discriminant = b * b - 4 * a * c

            if a == 0 {
                resultLabel.text = "The value you entered for A is invalid."
            } else if discriminant < 0 {
                resultLabel.text = "There are no results since the discriminant is less than zero."
            } else if discriminant == 0 {
                let x = -b / (2 * a)
                resultLabel.text = "There is only one value for X: \(x)"
            } else {
                let x1 = (-b + sqrt(discriminant)) / (2 * a)
                let x2 = (-b - sqrt(discriminant)) / (2 * a)
                resultLabel.text = "There are two values for X: \(x1) and \(x2)"
            }
        } else {
            if varA.text?.isEmpty == true {
                resultLabel.text = "Enter a value for A to find X."
            } else if varB.text?.isEmpty == true {
                resultLabel.text = "The value you entered for B is invalid."
            } else if varC.text?.isEmpty == true {
                resultLabel.text = "The value you entered for C is invalid."
            } else {
                resultLabel.text = "Invalid input. Please enter valid numeric values."
            }
        }
    }
    
}

