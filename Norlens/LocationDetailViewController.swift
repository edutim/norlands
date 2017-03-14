//
//  SecondViewController.swift
//  Norlens
//
//  Created by Timothy Hart on 3/10/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class LocationDetailController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var location = Location()
    
    //temp
    var images = [UIImage(named: "pic1"), UIImage(named: "pic2")]
    
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        configurePageControl()
        
        for i in 0..<location.images.count {
            frame.origin.x = self.scrollView.frame.size.width * CGFloat(i)
            frame.size = self.scrollView.frame.size
            self.scrollView.isPagingEnabled = true
            
            let sv = UIImageView(frame: frame)
            sv.image = location.images[i]
            self.scrollView.addSubview(sv)
        }
        
        self.scrollView.contentSize = CGSize(width: (self.scrollView.frame.size.width * CGFloat(images.count)), height: self.scrollView.frame.size.height)
    }
    
    func configurePageControl() {
        // The total number of pages that are available is based on how many available colors we have.
        self.pageControl.numberOfPages = images.count
        self.pageControl.currentPage = 0
        self.pageControl.tintColor = UIColor.red
        self.pageControl.pageIndicatorTintColor = UIColor.black
        self.pageControl.currentPageIndicatorTintColor = UIColor.green
        //self.view.addSubview(pageControl)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

