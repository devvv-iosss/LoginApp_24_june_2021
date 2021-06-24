//
//  LogOutViewController.swift
//  LoginApp
//
//  Created by Vladimir Syleimanov on 23.06.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import UIKit

class LogOutViewController: UIViewController {
    
    @IBOutlet var logOutLabel: UILabel!
    
    @IBOutlet var logOutButton: UIButton!
    
    let user = User.getUser()

    override func viewDidLoad() {
        super .viewDidLoad()
        logOutLabel.text = user.name
        navigationItem.title = user.logIn
    }
    

    @IBAction func LoOutPressed() {
        dismiss(animated: true)
     
    }
    
}
