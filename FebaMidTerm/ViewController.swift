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
    
}

