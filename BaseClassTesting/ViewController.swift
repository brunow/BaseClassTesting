//
//  ViewController.swift
//  BaseClassTesting
//
//  Created by Bruno Wernimont on 8/01/18.
//  Copyright © 2018 brunow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let usernameLabel = UILabel()
    
    let viewModel = SettingsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        usernameLabel.text = viewModel.username
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

