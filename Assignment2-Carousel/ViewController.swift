//
//  ViewController.swift
//  Assignment2-Carousel
//
//  Created by Salyards, Adey on 11/2/15.
//  Copyright © 2015 Salyards, Adey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var carouselSpinButtonView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        scrollView.delegate = self
        pageControl.numberOfPages = 4
        carouselSpinButtonView.alpha = 0
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.bounds.width)
        
        if pageControl.currentPage == 3 {
            carouselSpinButtonView.alpha = 1
            pageControl.hidden = true
        }
        else {
            carouselSpinButtonView.alpha = 0
            pageControl.hidden = false
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

