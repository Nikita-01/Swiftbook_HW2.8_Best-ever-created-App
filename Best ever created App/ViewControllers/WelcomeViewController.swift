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
    var developersList = Developer.getDevelopers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialLabel.text = """
Чтобы получить доступ к ценной
информации, введите Ваше имя!
"""
        enterButton.setTitle("ENTER", for: .normal)
        enterButton.backgroundColor = .gray
        enterButton.layer.cornerRadius = 10
    }

    @IBAction func enterButtonPressed() {
        if nameTextField.text == "" {
            showAlert(title: "Без имени в наше время никуда...", message: "Настойчиво рекоммендуем ввести имя!", textField: nameTextField)
        }
        
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        nameTextField.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }

        viewControllers.forEach {
            if let tipsChooseVC = $0 as? TipsChooseViewController {
                tipsChooseVC.tips = tips
              tipsChooseVC.name = nameTextField.text
            } else if let navigationVC = $0 as? UINavigationController {
                let developersListVC = navigationVC.topViewController as! DevelopersListViewController
                developersListVC.developers = developersList
            }
        }
    }
}

extension WelcomeViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
    
    extension WelcomeViewController: UITextFieldDelegate {
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super.touchesBegan(touches, with: event)
            view.endEditing(true)
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            enterButtonPressed()
                performSegue(withIdentifier: "tipsChooseVC", sender: nil)
            return true
            }
        }



