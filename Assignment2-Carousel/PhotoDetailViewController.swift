//
//  PhotoDetailViewController.swift
//  Assignment2-Carousel
//
//  Created by Salyards, Adey on 11/8/15.
//  Copyright © 2015 Salyards, Adey. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    
    var defaults = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        defaults.setObject("photoDetail", forKey: "PhotoDetailKey")
        defaults.synchronize()

        // Do any additional setup after loading the view.
    }

    @IBAction func didPressBack(sender: AnyObject) {
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
