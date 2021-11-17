//
//  ViewController.swift
//  Best ever created App
//
//  Created by Никита Рыжкин on 13.11.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var initialLabel: UILabel!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var enterButton: UIButton!
    
    var tips = DataManager.tips
//    var developersList = DataManager.developers
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialLabel.text = """
Чтобы совет был максимально продуман
введите, пожалуйста, Ваше имя
"""
        enterButton.setTitle("ENTER", for: .normal)
        enterButton.backgroundColor = .gray
        enterButton.layer.cornerRadius = 10
    }

    @IBAction func enterButtonPressed() {
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }

        viewControllers.forEach {
            if let tipsChooseVC = $0 as? TipsChooseViewController {
                tipsChooseVC.tips = tips
              tipsChooseVC.name = nameTextField.text
            } else if let navigationVC = $0 as? UINavigationController {
//                let developersListVC = navigationVC.topViewController as! DevelopersListViewController
//                developersListVC.developers = developers
            }
        }
    }
}

