//
//  DeveloperInfoViewController.swift
//  Best ever created App
//
//  Created by Никита Рыжкин on 18.11.2021.
//

import UIKit

class DeveloperInfoViewController: UIViewController {

    @IBOutlet var developerNameLabel: UILabel!
    @IBOutlet var developerGitHubNickLabel: UILabel!
    @IBOutlet var developerAvatarView: UIImageView!
    
    var developer: Developer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        developerNameLabel.text = "Name: \(developer.name)"
        developerGitHubNickLabel.text = "GitHub nick: \(developer.gitHubNick)"
        developerAvatarView.image = .init(named: developer.avatar)
      
    }
    


}
