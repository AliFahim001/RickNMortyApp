//
//  RMCharacterViewController.swift
//  RickyNMorty
//
//  Created by Ali Fahim on 08/01/2024.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endPoint: .character,
            pathComponents: ["1"],
            queryParameter: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "Alive")
            ]
        )
        
        print(request.url ?? "")
    }

}
