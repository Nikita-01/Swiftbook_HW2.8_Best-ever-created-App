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
мироздания \(name ?? "")!
"""
        
    }
    
    @IBAction func getTipsButtonPressed() {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let showTipsVC = segue.destination as? ShowTipsViewController else { return }
        showTipsVC.tips = tips
    }

    
    
}
