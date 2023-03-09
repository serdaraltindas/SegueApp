//
//  ViewController.swift
//  SegueApp
//
//  Created by Serdar Altındaş on 8.03.2023.
//

import UIKit

class ViewController: UIViewController {
var userName = ""
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var myLabelFirst: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func saveClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender:nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
}

