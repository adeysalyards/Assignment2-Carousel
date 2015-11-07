//
//  SignInViewController.swift
//  Assignment2-Carousel
//
//  Created by Salyards, Adey on 11/3/15.
//  Copyright © 2015 Salyards, Adey. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loadingActivityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var signInScrollView: UIScrollView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var loginNavBar: UIImageView!
    
    var initialY: CGFloat!
    var offset: CGFloat!
    var textFieldInitialY: CGFloat!
    var textFieldOffset: CGFloat!
    var contentOffset: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initialY = buttonParentView.frame.origin.y
        offset = -250
        textFieldInitialY = fieldParentView.frame.origin.y
        textFieldOffset = -90
        contentOffset = 30
        
        signInScrollView.delegate = self
            
        signInScrollView.contentSize = CGSize(width: 320, height: 600)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        let transform = CGAffineTransformMakeScale(0.9, 0.9)
        loginNavBar.transform = transform
        fieldParentView.transform = transform
        loginNavBar.alpha = 0
        fieldParentView.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.3) { () -> Void in
            self.fieldParentView.transform = CGAffineTransformIdentity
            self.loginNavBar.transform = CGAffineTransformIdentity
            self.fieldParentView.alpha = 1
            self.loginNavBar.alpha = 1
        }
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func didPressBack(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func didTapSignInButton(sender: AnyObject) {
        self.validateCredentials()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(signInScrollView: UIScrollView) {
        if signInScrollView.contentOffset.y <= -50 {
            view.endEditing(true)
        }
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        fieldParentView.frame.origin.y = textFieldInitialY + textFieldOffset
        buttonParentView.frame.origin.y = initialY + offset
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        fieldParentView.frame.origin.y = textFieldInitialY  
        buttonParentView.frame.origin.y = initialY
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
