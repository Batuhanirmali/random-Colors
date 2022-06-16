//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Talha Batuhan Irmalı on 15.06.2022.
//

import UIKit

class ColorsDetailVC: UIViewController {
    
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color ?? .blue
    }
  
}
