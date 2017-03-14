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
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var blurbTextView: UITextView!
    
    //MAKE SURE YOU set location before segueing to this view.
    var location = Location()
    
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Setup the scrollview with multiple images if they exist
        for i in 0..<location.images.count {
            frame.origin.x = self.scrollView.frame.size.width * CGFloat(i)
            frame.size = self.scrollView.frame.size
            self.scrollView.isPagingEnabled = true
            
            let sv = UIImageView(frame: frame)
            sv.image = location.images[i]
            self.scrollView.addSubview(sv)
        }
        self.scrollView.contentSize = CGSize(width: (self.scrollView.frame.size.width * CGFloat(location.images.count)), height: self.scrollView.frame.size.height)
        
        self.titleLabel.text = location.title
        self.blurbTextView.text = location.blurb
    }
    
    /*
    //removed but might add back in once I figure out how these stinkin' pageControls are supposed to work
     //http://stackoverflow.com/questions/29074454/how-to-create-a-scroll-view-with-a-page-control-using-swift
    func configurePageControl() {
        // The total number of pages that are available is based on how many available colors we have.
        self.pageControl.numberOfPages = location.images.count
        self.pageControl.currentPage = 0
        self.pageControl.tintColor = UIColor.red
        self.pageControl.pageIndicatorTintColor = UIColor.orange
        self.pageControl.currentPageIndicatorTintColor = UIColor.blue
        //self.view.addSubview(pageControl)
        
    }
    */
 
    @IBAction func back(sender: AnyObject) {
        self.dismiss(animated: true, completion: {})
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

