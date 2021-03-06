//
//  LogInVC2.swift
//  LoginApp
//
//  Created by Vladimir Syleimanov on 24.06.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import UIKit

class LogInVC2: UIViewController {
    
    @IBOutlet var logInTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let user = User.getUser()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logInPressed() {
        if logInTF.text == user.logIn && passwordTF.text == String(user.password) {
            
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        } else {
            showAlert(with: "Wrong format", and: "Please enter your correct")
        }
    }
    
    @IBAction func forgotUserNamePressed() {
        showAlert(with: "Wrong format", and: "LogIn is \(user.logIn)")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(with: "Wrong format", and: "Password is \(user.password)")
    }
    
    @IBAction func unwindToname(_ unwindSegue: UIStoryboardSegue) {
        logInTF.text = nil
        passwordTF.text = nil

    
}
}
// MARK: - UIAlertController
extension LogInVC2 {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style:  .default) { _ in
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension LogInVC2: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == logInTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInPressed()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
}
