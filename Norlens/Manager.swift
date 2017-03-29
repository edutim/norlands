

import Foundation
import UIKit
import MapKit

class Manager {
    static let shared = Manager()
    
    var locations = [Location]()
    
    private init() {
        //Create a variable to use over and over to create our locations
        var loc = Location()
        
        //Create a test location
        loc.title = "Location 1"
        loc.mainImage = UIImage(named: "pic1")!
        loc.images = [UIImage(named: "pic1")!, UIImage(named: "pic2")!]
        loc.blurb = "Test blurb"
        loc.coordinate = CLLocationCoordinate2D(latitude: 44.242674, longitude: -70.123433)
        //Add the first test location
        locations.append(loc)
        
        //Create aother test location
        loc = Location()
        loc.title = "Location 2"
        loc.mainImage = UIImage(named: "pic2")!
        loc.images = [UIImage(named: "pic1")!, UIImage(named: "pic2")!]
        loc.blurb = "Test blurb2"
        loc.coordinate = CLLocationCoordinate2D(latitude: 44.242474, longitude: -70.1233610)
        //Add the first test location
        locations.append(loc)
        
        
    }
    
    
    
}
