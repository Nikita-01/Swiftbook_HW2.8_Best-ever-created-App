//
//  ShowTipsViewController.swift
//  Best ever created App
//
//  Created by Никита Рыжкин on 17.11.2021.
//

import UIKit

class ShowTipsViewController: UIViewController {

    @IBOutlet var tipLabel: UILabel!
    
    var tips: [Tips]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let hour = Calendar.current.component(.hour, from: Date())
        let randomIndex = Int.random(in: 0..<tips.count)
        
        switch hour {
        case 3..<10:
            tipLabel.text = tips[randomIndex].morningTips
        case 10..<16:
            tipLabel.text = tips[randomIndex].dayTimeTips
        case 16..<22:
            tipLabel.text = tips[randomIndex].eveningTips
        default:
            tipLabel.text = tips[randomIndex].nightTips
        }
        
    }
}
