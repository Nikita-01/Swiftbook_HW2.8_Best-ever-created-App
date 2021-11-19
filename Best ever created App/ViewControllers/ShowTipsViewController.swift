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
        let hour = Calendar.current.component(.hour, from: Date())

        switch hour {
        case 3..<10:
            tipLabel.text = tips.morningTips[Int.random(in: 0...tips.morningTips.count - 1)]
        case 10..<16:
            tipLabel.text = tips.tipsforTheDayTime[Int.random(in: 0...tips.tipsforTheDayTime.count - 1)]
        case 16..<22:
            tipLabel.text = tips.tipsForTheEvening[Int.random(in: 0...tips.tipsForTheEvening.count - 1)]
        default:
            tipLabel.text = tips.tipsForTheNight[Int.random(in: 0...tips.tipsForTheNight.count - 1)]
        }
    }
    

  

}
