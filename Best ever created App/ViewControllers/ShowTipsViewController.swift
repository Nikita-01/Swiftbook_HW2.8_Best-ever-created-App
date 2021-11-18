//
//  ShowTipsViewController.swift
//  Best ever created App
//
//  Created by Никита Рыжкин on 17.11.2021.
//

import UIKit

class ShowTipsViewController: UIViewController {

    @IBOutlet var tipLabel: UILabel!
    
    var tips: DataManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tipLabel.text = tips.morningTips[0]
    }
    

  

}
