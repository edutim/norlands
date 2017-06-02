

import UIKit

class LocationDetailController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var blurbTextView: UITextView!
    
    @IBOutlet weak var audioProgressIndicator: KDCircularProgress!
    
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
        //
        
        audioProgressIndicator.set(colors: UIColor.white)
    }
    
    override func viewDidLayoutSubviews() {
        self.blurbTextView.setContentOffset(CGPoint.zero, animated: false)
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
    
    @IBAction func debug(sender: AnyObject) {
        audioProgressIndicator.animate(toAngle: 360.0, duration: 5.0, completion: {completed in self.audioProgressIndicator.angle = 0.0})
    }
 
    @IBAction func back(sender: AnyObject) {
        self.dismiss(animated: true, completion: {})
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

