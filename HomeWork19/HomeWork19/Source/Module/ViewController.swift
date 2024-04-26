//
//  ViewController.swift
//  HomeWork19
//
//  Created by Алина Власенко on 23.04.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func LoadColorsDataButton(_ sender: Any) {
        
        Network.shared.fetchColors()
    }
}
