//
//
//import UIKit
//
//class LoginViewController: UIViewController {
//    
//    // MARK: - IB Outlets
//    @IBOutlet var userNameTextField: UITextField!
//    @IBOutlet var passwordTextField: UITextField!
//    
//    
//    // MARK: - Private properties
//    
//    
//    private var user = User.getUser()
//
//    let viewControllers = UITabBarController()
//    
//    // MARK: Navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard  let tabBarController = segue.destination as? UITabBarController else { return }
//        
//        for viewController in tabBarController.viewControllers! {
//            if let welcomeVC = viewController as? WelcomeViewController {
//                welcomeVC.user = user.logIn
//            } else if  let anotherVC = viewController as? AnotherWelcomeViewController {
//                anotherVC.helloOutletString = "Hello, My logIn is \(user.logIn), but my name is \(user.name), and my surname is \(user.surname)"
//            } else if  let logOutVC = viewController as? LogOutViewController {
//                logOutVC.labelWelcome = "Hello, My logIn is \(user.logIn)"
//        }
//        }
//    }
//    
//    // MARK: IBActions
//    @IBAction func logInPressed() {
//        if userNameTextField.text != user.logIn || passwordTextField.text != String(user.password) {
//            showAlert(
//                title: "Invalid login or password",
//                message: "Please, enter correct login and password",
//                textField: passwordTextField
//            )
//            return
//        }
//        
//        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
//    }
//    
//    @IBAction func forgotRegisterData(_ sender: UIButton) {
//        sender.tag == 0
//            ? showAlert(title: "Oops!", message: "Your name is \(user.logIn) 😉")
//            : showAlert(title: "Oops!", message: "Your password is \(user.password) 😉")
//    }
//    
//    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
//        userNameTextField.text = ""
//        passwordTextField.text = ""
//    }
//    
//}
//
//// MARK: - Alert Controller
//extension LoginViewController {
//    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
//        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
//            textField?.text = ""
//        }
//        alert.addAction(okAction)
//        present(alert, animated: true)
//    }
//}
//
//// MARK: - Work with keyboard
//extension LoginViewController: UITextFieldDelegate {
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesBegan(touches, with: event)
//        view.endEditing(true)
//    }
//    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if textField == userNameTextField {
//            passwordTextField.becomeFirstResponder()
//        } else {
//            logInPressed()
//        }
//        return true
//    }
//}
