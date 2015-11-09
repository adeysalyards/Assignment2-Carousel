//
//  ImageTimelineViewController.swift
//  Assignment2-Carousel
//
//  Created by Salyards, Adey on 11/6/15.
//  Copyright © 2015 Salyards, Adey. All rights reserved.
//

import UIKit

class ImageTimelineViewController: UIViewController {

    @IBOutlet weak var feedScrollView: UIScrollView!
    @IBOutlet weak var feedImage: UIImageView!
    @IBOutlet weak var learnMoreBannerView: UIImageView!
    
    var bannerInitialX: CGFloat!
    var bannerOffset: CGFloat!
    var scrollInitialY: CGFloat!
    var scrollOffset: CGFloat!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerInitialX = learnMoreBannerView.frame.origin.x
        bannerOffset = -320
        
        scrollInitialY = feedScrollView.frame.origin.y
        scrollOffset = -40
        
        feedScrollView.contentSize = feedImage.image!.size

    }
    
    @IBAction func didPressX(sender: AnyObject) {
        learnMoreBannerView.frame.origin.x = bannerInitialX + bannerOffset
        feedScrollView.frame.origin.y = scrollInitialY + scrollOffset
    }
    
    /*func didPressX(notification: NSNotification!) {
        learnMoreBannerView.frame.origin.y = bannerInitialY + bannerOffset
        feedScrollView.frame.origin.y = scrollInitialY + scrollOffset
    }*/


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
