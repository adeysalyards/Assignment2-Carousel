//
//  CreateAccountViewController.swift
//  Assignment2-Carousel
//
//  Created by Salyards, Adey on 11/6/15.
//  Copyright © 2015 Salyards, Adey. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var loginNavBar: UIImageView!
    @IBOutlet weak var createAccountScrollView: UIScrollView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var createTextImageView: UIImageView!
    @IBOutlet weak var checkBoxButton: UIButton!
    
    var initialY: CGFloat!
    var offset: CGFloat!
    var textFieldInitialY: CGFloat!
    var textFieldOffset: CGFloat!
    var contentOffset: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initialY = buttonParentView.frame.origin.y
        offset = -190
        textFieldInitialY = fieldParentView.frame.origin.y
        textFieldOffset = -110
        contentOffset = 30
        
        createAccountScrollView.delegate = self
        
        createAccountScrollView.contentSize = CGSize(width: 320, height: 568)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)


        // Do any additional setup after loading the view.
    }
    @IBAction func didCheckBox(sender: AnyObject) {
        checkBoxButton.selected = !checkBoxButton.selected
    }
    
    override func viewWillAppear(animated: Bool) {
        let transform = CGAffineTransformMakeScale(0.9, 0.9)
        loginNavBar.transform = transform
        fieldParentView.transform = transform
        buttonParentView.transform = transform
        createTextImageView.transform = transform
        loginNavBar.alpha = 0
        fieldParentView.alpha = 0
        buttonParentView.alpha = 0
        createTextImageView.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.3) { () -> Void in
            self.fieldParentView.transform = CGAffineTransformIdentity
            self.loginNavBar.transform = CGAffineTransformIdentity
            self.buttonParentView.transform = CGAffineTransformIdentity
            self.createTextImageView.transform = CGAffineTransformIdentity
            self.fieldParentView.alpha = 1
            self.loginNavBar.alpha = 1
            self.buttonParentView.alpha = 1
            self.createTextImageView.alpha = 1
        }
    }

    @IBAction func didPressBack(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        fieldParentView.frame.origin.y = textFieldInitialY + textFieldOffset
        buttonParentView.frame.origin.y = initialY + offset
        createTextImageView.frame.origin.y = textFieldInitialY + textFieldOffset
        createTextImageView.alpha = 0
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        fieldParentView.frame.origin.y = textFieldInitialY
        buttonParentView.frame.origin.y = initialY
        createTextImageView.frame.origin.y = textFieldInitialY
        createTextImageView.alpha = 1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
