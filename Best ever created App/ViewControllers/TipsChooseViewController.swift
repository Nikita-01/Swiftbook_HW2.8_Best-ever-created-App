//
//  TipsChooseViewController.swift
//  Best ever created App
//
//  Created by Никита Рыжкин on 17.11.2021.
//

import UIKit

class TipsChooseViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var getTipsButton: UIButton!
    
    var name: String!
    var tips: DataManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = """
Ну вот ты и добрался до тайн
Мироздания \(name ?? "")!
"""
        getTipsButton.setTitle("Get tip", for: .normal)
      
    }
    
    @IBAction func getTipsButtonPressed() {
    }
    @IBAction func exitButtonPressed() {
        dismiss(animated: true)
    }
    
    

}
