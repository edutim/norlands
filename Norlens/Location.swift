

import UIKit
import MapKit

class Location {
    var title = "Test Title"
    var mainImage = UIImage()
    var images = [UIImage]()
    var blurb = "Test blurb"
    var audioBlurb = Sound(url: Bundle.main.url(forResource: "emptySound", withExtension: "mp3")!)
    var audioBlurbURL = Bundle.main.url(forResource: "emptySound", withExtension: "mp3")//Bundle.main.path(forResource: "emptySound.mp3", ofType:nil)!
    var coordinate: CLLocationCoordinate2D = CLLocationCoordinate2D()
}
