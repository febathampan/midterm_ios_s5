//
//  ViewController.swift
//  FebaMidTerm
//
//  Created by user234888 on 11/1/23.
//

import UIKit

class ViewController: UIViewController {
    var counterValue = 0; //variable to hold counter
    var incrementByVal=1; //increment factor
    
    
    @IBOutlet weak var findCityButton: UIButton!
    @IBOutlet weak var cityImage: UIImageView!
    @IBOutlet weak var cityName: UITextField!
    
    @IBOutlet weak var varA: UITextField!
    @IBOutlet weak var varB: UITextField!
    @IBOutlet weak var varC: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var updateCounter: UILabel!
    
    //Lab UI Text Field
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var summary: UITextView!
    
    @IBOutlet weak var responseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //responseLabel.isHidden = true
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
    
    @IBAction func clearFunction(_ sender: Any) {
        varA.text = ""
        varB.text = ""
        varC.text = ""
    }
    
    
    @IBAction func doAdd(_ sender: Any) {
        counterValue+=incrementByVal
        update()
    }
    
    @IBAction func doSubtract(_ sender: Any) {
        counterValue-=incrementByVal
        update()
    }
    
    //Function to update the displayed counter
    func update(){
        updateCounter.text="\(counterValue)"
    }
    
    @IBAction func resetCounter(_ sender: Any) {
        counterValue=0
        incrementByVal=1;
        update()
    }
    @IBAction func stepBy2(_ sender: Any) {
        incrementByVal = 2;
    }

    //Lab 3
    
    @IBAction func addUserDetails(_ sender: Any) {
       // summary.text = ""
        let fName = firstName.text ?? ""
               let lName = lastName.text ?? ""
               let c_country = country.text ?? ""
               let a_age = age.text ?? ""
        let userDetails = "First Name: \(fName)\nLast Name: \(lName)\nCountry: \(c_country)\nAge: \(a_age)"
        summary.text = userDetails + "\n\n"
        
    }
    
    @IBAction func submitUserDetails(_ sender: Any) {
        let fName = firstName.text ?? ""
               let lName = lastName.text ?? ""
               let c_country = country.text ?? ""
               let a_age = age.text ?? ""

               // Check if any of the fields are empty
               if fName.isEmpty || lName.isEmpty || c_country.isEmpty || a_age.isEmpty {
                   responseLabel.text = "Complete info"
                   responseLabel.textColor = UIColor.red;
                   responseLabel.isHidden = false
               } else {
                   let userDetails = "First Name: \(fName)\nLast Name: \(lName)\nCountry: \(c_country)\nAge: \(a_age)"
                   summary.text = userDetails + "\n\n"
                   responseLabel.text = "Successfully Submitted"
                   responseLabel.textColor = UIColor.green
                   responseLabel.isHidden = false

               }    }
    
    @IBAction func clearDetails(_ sender: Any) {
        firstName.text = ""
        lastName.text = ""
        age.text = ""
        country.text = ""
        summary.text = ""
        responseLabel.text = ""
        
    }
}


