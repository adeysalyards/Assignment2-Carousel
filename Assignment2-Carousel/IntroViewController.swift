//
//  IntroViewController.swift
//  Assignment2-Carousel
//
//  Created by Salyards, Adey on 11/3/15.
//  Copyright © 2015 Salyards, Adey. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var introImageView: UIImageView!
    @IBOutlet weak var tile1View: UIImageView!
    @IBOutlet weak var tile2View: UIImageView!
    @IBOutlet weak var tile3View: UIImageView!
    @IBOutlet weak var tile4View: UIImageView!
    @IBOutlet weak var tile5View: UIImageView!
    @IBOutlet weak var tile6View: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        introScrollView.contentSize = CGSize(width: 320, height: 1260)
        introScrollView.delegate = self
        introScrollView.sendSubviewToBack(introImageView)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   func scrollViewDidScroll(introscrollview: UIScrollView!) {
        var offset = Float(introScrollView.contentOffset.y)
    
        var tx = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        var ty = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
    
        var rotation = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
    
        tile1View.transform = CGAffineTransformMakeTranslation(CGFloat(tx),CGFloat(ty))
        tile1View.transform = CGAffineTransformRotate(tile1View.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        print("content offset: \(introScrollView.contentOffset.y)")
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
