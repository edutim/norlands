

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
        loc.title = "Masion"
        loc.mainImage = UIImage(named: "Mansion list")!
        loc.images = [UIImage(named: "Mansion list")!, UIImage(named: "Mansion #1")!,UIImage(named: "Mansion #2")!,UIImage(named: "Mansion #3")!]
        loc.blurb = "Blurb"
        loc.coordinate = CLLocationCoordinate2D(latitude: 44.407468, longitude: -70.210049)
        //Add the first test location
        locations.append(loc)
        
        //Create aother test location
        loc = Location()
        loc.title = "The Barn"
        loc.mainImage = UIImage(named: "barnlist")!
        loc.images = [UIImage(named: "barnlist")!, UIImage(named: "barn1")!,UIImage(named: "barn2")!,UIImage(named: "barn3")!]
        loc.blurb = "Constructed in 1867, the barn was used to house livestock, such as oxen, and to store farm supplies, equipment, hay and food for the animals. On April 28th, 2008, a devastating fire destroyed the barn and the connecting farmer’s cottage. Today, the barn is being rebuilt. The barn’s framework is up but work is still needed to shingle the roof, add windows and doors, build stalls, and finish the exterior with clapboards and painting. The barn is expected to be completed in 2017. /n The working barn is not only a home for animals, but plays a primary role in Norlands educational programming as a place to experience 19-century farm life. The barn also provides space for dances and other public events held at Norlands."
        loc.coordinate = CLLocationCoordinate2D(latitude: 44.407698, longitude: -70.210013)
        //Add the first test location
        locations.append(loc)
        
        //Create aother test location
        loc = Location()
        loc.title = "The Church"
        loc.mainImage = UIImage(named: "churchlist")!
        loc.images = [UIImage(named: "churchlist")!, UIImage(named: "Church 1")!,UIImage(named: "Church 2")!,UIImage(named: "Church 3")!]
        loc.blurb = "Built in 1828, the church – or meeting house as it was called then - is the oldest standing building at Norlands and was the first church in the town of Livermore to have a steeple with its spire reaching 105 feet high. Israel Washburn Sr., and his neighbor, Otis Pray, donated the land to construct a Universalist Meeting House. They raised money by selling pews. Architect Martin Cushing, prominent in this region, drew up the plans and over 1,000 people attended the dedication on June 18, 1829.  The row of horse sheds, built to the east and north of the meeting house, have been replicated and you can see them today behind the meeting house. \n Church services were held regularly until 1869 when a new church was built in Livermore. The church at Norlands continued to be used for summer services until the early-20th century. \n In 1873, the meeting house was remodeled by George Harding, one of Maine’s most prominent architects. The rear choir gallery was removed as well as the high pulpit. The original clear glass windows were replaced with stained glass. Artist Valentine Keiler painted the plaster walls and ceiling with decorative trompe d’oeil (painting to fool the eye) designs. \n Today, the meeting house contains its original pews and organ.  It seats approximately 200 people and is open during events and rented for wedding ceremonies."
        loc.coordinate = CLLocationCoordinate2D(latitude: 44.406760, longitude: -70.209997)
        //Add the first test location
        locations.append(loc)
        
        
        //Create aother test location
        loc = Location()
        loc.title = "The Library"
        loc.mainImage = UIImage(named: "librarylist")!
        loc.images = [UIImage(named: "churchlist")!, UIImage(named: "library1")!,UIImage(named: "library2")!]
        loc.blurb = "The Washburn Memorial Library was built in 1883 and dedicated in 1885 to the memory of Israel and Patty Washburn. It was the vision of Israel Washburn, Jr. but it took financing from his brothers Elihu and William Drew, to make it a reality. When dedicated on August 5th 1885, speeches were made by Elihu Washburn, Hannibal Hamlin, and the honorable William P. Fry, Maine State Senator. \n Built of Hallowell granite with a slate roof and stained glass windows, the Library is considered gothic in style and was designed by architect Alexander Currier from Hallowell, Maine. First used as a lending library for the town of Livermore, the Library now houses the family’s archival documents and artifacts and is used for programming and during events."
        loc.coordinate = CLLocationCoordinate2D(latitude: 44.409523, longitude: -70.20852990000003)
        //Add the first test location
        locations.append(loc)
        
        
        //Create aother test location
        loc = Location()
        loc.title = "Pondside"
        loc.mainImage = UIImage(named: "Pondsidelist")!
        loc.images = [UIImage(named: "Pondsidelist")!, UIImage(named: "pondside1")!,UIImage(named: "pondside2")!,UIImage(named: "pondside3")!]
        loc.blurb = "ond. Pondside is an eighteenth-century cape-style home with an attached ell. Though the date of the original home construction is not known, the ell was added in 1940 and contained Cadwallader Lincoln Washburn’s art studio. Cadwallader Lincoln, son of William Drew (the youngest of the original 10 children), was a famous dry-point etcher who moved into the house with his wife Margaret in July of 1964. \n The property was donated to Norlands in 1979 and was used for eighteenth-century school programs and live-ins as well as for housing interns and caretakers. The building is currently used for storage until it is renovated again for public use."
        loc.coordinate = CLLocationCoordinate2D(latitude: 44.409523, longitude: -70.20852990000003)
        //Add the first test location
        locations.append(loc)
        
        //Create aother test location
        loc = Location()
        loc.title = "School House"
        loc.mainImage = UIImage(named: "Schoolhouse1")!
        loc.images = [UIImage(named: "Schoolhouse1")!, UIImage(named: "Schoolhouse2")!,UIImage(named: "Schoolhouse3")!]
        loc.blurb = "The schoolhouse at Norlands is a replica of the original 1853 District #7 school that stood in this location. All ten Washburn children attended school here. It is typical of a one-room school building of the period with a cloak room, book closet, and attached woodshed. It has plain white plaster walls above wainscoting, one wooden blackboard, and no lighting except for what nature provides. The schoolhouse is currently used as a learning center for guests of all ages to experience the education of the Washburn’s era in 1853."
        loc.coordinate = CLLocationCoordinate2D(latitude: 44.409523, longitude: -70.20852990000003)
        //Add the first test location
        locations.append(loc)
        
        

        
    }
    
    
    
}
