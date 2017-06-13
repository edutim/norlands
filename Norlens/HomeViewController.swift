

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var blurbTV: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        DispatchQueue.global(qos: .userInitiated).async {
            Manager.shared
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidLayoutSubviews() {
        self.blurbTV.setContentOffset(CGPoint.zero, animated: false)
    }
    
}

