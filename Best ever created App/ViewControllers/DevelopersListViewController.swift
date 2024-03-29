//
//  DevelopersListTableViewController.swift
//  Best ever created App
//
//  Created by Никита Рыжкин on 18.11.2021.
//

import UIKit

class DevelopersListViewController: UITableViewController {

    var developers: [Developer]!

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        developers.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "developer", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let developer = developers[indexPath.row]
        
        content.text = developer.name
        cell.contentConfiguration = content

        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? DeveloperInfoViewController else { return }
            detailVC.developer = developers[indexPath.row]
        }
    }
}
