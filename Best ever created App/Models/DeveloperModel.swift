//
//  DeveloperModel.swift
//  Best ever created App
//
//  Created by Никита Рыжкин on 18.11.2021.
//

import Foundation

struct Developer {
    let name: String
    let gitHubNick: String
    let avatar: String
}


extension Developer {
    static func getDevelopers() -> [Developer] {
        
        var developers: [Developer] = []
        
        let names = DevelopersDataManager.shared.names
        let gitHubNicks = DevelopersDataManager.shared.gitHubNicks
        let images = DevelopersDataManager.shared.images
        
        for index in 0...names.count - 1 {
            let developer = Developer(name: names[index],
                                      gitHubNick: gitHubNicks[index],
                                      avatar: images[index]
            )
            developers.append(developer)
        }
     return developers
    }
}
