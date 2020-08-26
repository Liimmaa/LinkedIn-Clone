//
//  ViewController.swift
//  LinkedInClone
//
//  Created by USER on 23/08/2020.
//  Copyright © 2020 Lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {

            // Initialize the dictionary for the emoji icons
        
            let dict = ["C": "camera was clicked", "V": "video was clicked", "I": "image was clicked"]


            // Here we store the sender in the selectedButton constant
            let selectedButton = sender

            // Get the emoji from the title label of the selected button
            if let wordToLookup = selectedButton.titleLabel?.text {

                // Get the meaning of the emoji from the dictionary
                let meaning = dict[wordToLookup]
                


                // Change the line below to display the meaning of the emoji instead of Hello World
                let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)

                alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                present(alertController, animated: true, completion: nil)
            }

        }


    }



