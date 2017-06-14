

import UIKit

private let reuseIdentifier = "Cell"

class MoreViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 5
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MoreCollectionViewCell
        //cell.backgroundColor = UIColor.gray
        // Configure the cell
        
        var image = UIImage()
        var title = ""
        
        switch indexPath.row {
            case 0:
                title = "Living History Center"
                image = #imageLiteral(resourceName: "WashburnLetter")
            case 1:
                title = "Events"
                image = #imageLiteral(resourceName: "EventsLetter")
            case 2:
                title = "Contact"
                image = #imageLiteral(resourceName: "ContactLetter")
            case 3:
                title = "Maine Memory Network"
                image = #imageLiteral(resourceName: "MaineMemNetLetter")
            case 4:
                title = "About This App"
                image = #imageLiteral(resourceName: "AboutAppLetter")
            
        default:
            print("Not a row I can see.")
        }
        
        //NEED TO CHANGE THESE
        if let label = cell.contentView.viewWithTag(1) as? UILabel {
            label.text = title
        }
        
        //check for the view tag 2, which in the image in the custom tableviewcell
        if let imageView = cell.contentView.viewWithTag(2) as? UIImageView {
            imageView.image = image
        }
        
    
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        switch indexPath.row {
        case 0:
            //Washburn0Norlansa LHC
            UIApplication.shared.openURL(URL(string: "https://norlands.org/index.html")!)
        case 1:
            //Events
            UIApplication.shared.openURL(URL(string: "https://norlands.org/events.html")!)
        case 2:
            //Contact
            UIApplication.shared.openURL(URL(string: "https://norlands.org/contact.html")!)
        case 3:
            //Maine Memory Network
            UIApplication.shared.openURL(URL(string: "https://www.mainememory.net/sitebuilder/site/2556/page/4110/display?use_mmn=1")!)
        case 4:
            //About
            print("hey, fix me")
            performSegue(withIdentifier: "AboutApp", sender: self)
        default:
            print("Not a row I can see.")
        }

    }
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
