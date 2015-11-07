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
    
        //tile1View
    
        let oneOffset = Float(introScrollView.contentOffset.y)
    
        let oneTx = convertValue(CGFloat(oneOffset), r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        let oneTy = convertValue(CGFloat(oneOffset), r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
    
        let oneRotation = convertValue(CGFloat(oneOffset), r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
    
        tile1View.transform = CGAffineTransformMakeTranslation(CGFloat(oneTx),CGFloat(oneTy))
        tile1View.transform = CGAffineTransformRotate(tile1View.transform, CGFloat(Double(oneRotation) * M_PI / 180))
    
        //tile2view
    
    let twoOffset = Float(introScrollView.contentOffset.y)
    
    let twoTx = convertValue(CGFloat(twoOffset), r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
    let twoTy = convertValue(CGFloat(twoOffset), r1Min: 0, r1Max: 568, r2Min: -225, r2Max: 0)
    
    let twoScale = convertValue(CGFloat(twoOffset), r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
    
    let twoRotation = convertValue(CGFloat(twoOffset), r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
    
        tile2View.transform = CGAffineTransformMakeTranslation(CGFloat(twoTx),CGFloat(twoTy))
        tile2View.transform = CGAffineTransformRotate(tile2View.transform, CGFloat(Double(twoRotation) * M_PI / 180))
        tile2View.transform = CGAffineTransformScale(tile2View.transform, CGFloat(twoScale), CGFloat(twoScale))
    
        //tile3view
    
    let threeOffset = Float(introScrollView.contentOffset.y)
    
    let threeTx = convertValue(CGFloat(threeOffset), r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
    let threeTy = convertValue(CGFloat(threeOffset), r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
    
    let threeScale = convertValue(CGFloat(threeOffset), r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
    
    let threeRotation = convertValue(CGFloat(threeOffset), r1Min: 0, r1Max: 568, r2Min: 15, r2Max: 0)
    
    tile3View.transform = CGAffineTransformMakeTranslation(CGFloat(threeTx),CGFloat(threeTy))
    tile3View.transform = CGAffineTransformRotate(tile3View.transform, CGFloat(Double(threeRotation) * M_PI / 180))
    tile3View.transform = CGAffineTransformScale(tile3View.transform, CGFloat(threeScale), CGFloat(threeScale))
    
    //tile4view
    
    let fourOffset = Float(introScrollView.contentOffset.y)
    
    let fourTx = convertValue(CGFloat(fourOffset), r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
    let fourTy = convertValue(CGFloat(fourOffset), r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
    
    let fourScale = convertValue(CGFloat(fourOffset), r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
    
    let fourRotation = convertValue(CGFloat(fourOffset), r1Min: 0, r1Max: 568, r2Min: 20, r2Max: 0)
    
    tile4View.transform = CGAffineTransformMakeTranslation(CGFloat(fourTx),CGFloat(fourTy))
    tile4View.transform = CGAffineTransformRotate(tile4View.transform, CGFloat(Double(fourRotation) * M_PI / 180))
    tile4View.transform = CGAffineTransformScale(tile4View.transform, CGFloat(fourScale), CGFloat(fourScale))
    
    //tile5view
    
    let fiveOffset = Float(introScrollView.contentOffset.y)
    
    let fiveTx = convertValue(CGFloat(fiveOffset), r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
    let fiveTy = convertValue(CGFloat(fiveOffset), r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
    
    let fiveScale = convertValue(CGFloat(fiveOffset), r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
    
    let fiveRotation = convertValue(CGFloat(fiveOffset), r1Min: 0, r1Max: 568, r2Min: -5, r2Max: 0)
    
    tile5View.transform = CGAffineTransformMakeTranslation(CGFloat(fiveTx),CGFloat(fiveTy))
    tile5View.transform = CGAffineTransformRotate(tile5View.transform, CGFloat(Double(fiveRotation) * M_PI / 180))
    tile5View.transform = CGAffineTransformScale(tile5View.transform, CGFloat(fiveScale), CGFloat(fiveScale))
    
    //tile6view
    
    let sixOffset = Float(introScrollView.contentOffset.y)
    
    let sixTx = convertValue(CGFloat(sixOffset), r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
    let sixTy = convertValue(CGFloat(sixOffset), r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
    
    let sixScale = convertValue(CGFloat(sixOffset), r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
    
    let sixRotation = convertValue(CGFloat(sixOffset), r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
    
    tile6View.transform = CGAffineTransformMakeTranslation(CGFloat(sixTx),CGFloat(sixTy))
    tile6View.transform = CGAffineTransformRotate(tile6View.transform, CGFloat(Double(sixRotation) * M_PI / 180))
    tile6View.transform = CGAffineTransformScale(tile6View.transform, CGFloat(sixScale), CGFloat(sixScale))

    
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
