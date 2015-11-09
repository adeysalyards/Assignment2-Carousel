//
//  SettingsViewController.swift
//  Assignment2-Carousel
//
//  Created by Salyards, Adey on 11/6/15.
//  Copyright © 2015 Salyards, Adey. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIAlertViewDelegate {

    @IBOutlet weak var settingsImage: UIImageView!
    @IBOutlet weak var settingsScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsScrollView.contentSize = CGSize(width: 320, height: 885)
        
        //settingsScrollView.contentSize = settingsImage.image!.size
        
        // Do any additional setup after loading the view.
    }
    
    func didSignOutControl (){
        let alertController = UIAlertController(title:nil, message: "Are you sure you want to log out?", preferredStyle: .ActionSheet)
        
        let logoutAction = UIAlertAction(title: "Log Out", style: UIAlertActionStyle.Destructive, handler: {
            (UIAlertAction) -> Void in
            self.performSegueWithIdentifier("signOutSegue", sender:nil)
        })
        
        let okAction = UIAlertAction (title: "Cancel", style: UIAlertActionStyle.Cancel) { (UIAlertAction) -> Void in
        }
        
        alertController.addAction(okAction)
        alertController.addAction(logoutAction)
        
        presentViewController(alertController, animated: true) { () -> Void in
        }

    }

    @IBAction func didPressSignOut(sender: AnyObject) {
        didSignOutControl()
    }
    
    @IBAction func didPressX(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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
