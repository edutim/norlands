

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
        loc.coordinate = CLLocationCoordinate2D(latitude: 44.407468, longitude: -70.210049)
        //Add the first test location
        locations.append(loc)
        
        //Create aother test location
        loc = Location()
        loc.title = "Location 2"
        loc.mainImage = UIImage(named: "pic2")!
        loc.images = [UIImage(named: "pic1")!, UIImage(named: "pic2")!]
        loc.blurb = "Test blurb2"
        loc.coordinate = CLLocationCoordinate2D(latitude: 44.406434, longitude: -70.20941)
        //Add the first test location
        locations.append(loc)
        
        
    }
    
    
    
}
