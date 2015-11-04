//
//  SignInViewController.swift
//  Assignment2-Carousel
//
//  Created by Salyards, Adey on 11/3/15.
//  Copyright © 2015 Salyards, Adey. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loadingActivityIndicatorView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func didTapSignInButton(sender: AnyObject) {
        self.validateCredentials()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
        func validateCredentials() {
            if emailTextField.text == "adey@email.com" && passwordTextField.text == "password" {
                loadingActivityIndicatorView.startAnimating()
                
                delay(2, closure: { () -> () in
                    self.performSegueWithIdentifier("LoginSegue", sender: nil)
                })
            }
            else if emailTextField.text == "" || passwordTextField.text == "" {
            
                let emptyAlert = UIAlertController(title: "Missing something?", message: "Try that one again.", preferredStyle: UIAlertControllerStyle.Alert)
                
                let okAction = UIAlertAction(title: "Got it", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in
                    print("User tapped got it")
                })
                
                emptyAlert.addAction(okAction)
                
                presentViewController(emptyAlert, animated: true, completion: nil)
            }
            else {
                loadingActivityIndicatorView.startAnimating()
                delay(2, closure: { () -> () in
                    
                    let alert = UIAlertController(title: "Heads up!", message: "Let's try that again.", preferredStyle: UIAlertControllerStyle.Alert)
                    
                    let okAction = UIAlertAction(title: "Got it", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in
                        self.loadingActivityIndicatorView.stopAnimating()
                    })
                    
                    alert.addAction(okAction)
                    
                    self.presentViewController(alert, animated: true, completion: nil)
                })
                
            }
        }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}
