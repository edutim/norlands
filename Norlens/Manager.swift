

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
        loc.title = "Mansion"
        loc.mainImage = UIImage(named: "Mansion list")!
        loc.images = [UIImage(named: "Mansion list")!, UIImage(named: "Mansion #1")!,UIImage(named: "Mansion #2")!,UIImage(named: "Mansion #3")!]
        loc.blurb = "\t The Norlands Mansion, with the attached farmer’s cottage and barn, was built in 1867. It is the third house built on the property after the original homestead and its replacement, Boyscroft, burned down. The original property was owned by Cyrus Hamlin, the father of Abraham Lincoln's first vice president, Hannibal Hamlin. Israel Washburn Sr. purchased the original property in 1809 in order to run a general store near where the church stands today. \n\t The house contains twenty-three rooms, each with eleven-foot six-inch ceilings. There are seven fireplaces throughout. When built in 1867 it required twenty three carpenters, two painters, and six masons to complete it. \n In preparation for the dedication of the Library in 1884, the Washburns refurbished the house by adding the north piazza (porch), interior shutters on the windows, and carpeted the front hall, study, and staircase. Most of the Washburn children never lived in this mansion. However, the majority of the family did come back to visit or stayed at the home for extended periods. Israel Sr., the only constant occupant of the property, died in September of 1876. \n\t In 1869, Charles Ames Washburn, one of the ten children, named this family homestead the Norlands in reference to the poem, 'The Ballad of Oriana' by Lord Alfred Tennyson. The poem states, 'When the long dun wolds are ribb'd with snow, And loud the Norland whirlwinds blow'. And, so it has been called the Norlands ever since. \n The Washburn family descendants owned and maintained the home until 1973 when the property became a non-profit living history center. The rooms have been restored to three time periods – 1867, 1883, and 1899."
        loc.audioBlurbURL = Bundle.main.url(forResource: "Mansion", withExtension: "m4a")
        loc.coordinate = CLLocationCoordinate2D(latitude: 44.407525, longitude: -70.210540)
        //Add the first test location
        locations.append(loc)
        
        //Create aother test location
        loc = Location()
        loc.title = "Barn"
        loc.mainImage = UIImage(named: "barnlist")!
        loc.images = [UIImage(named: "barnlist")!, UIImage(named: "barn1")!,UIImage(named: "barn2")!,UIImage(named: "barn3")!]
        loc.blurb = "\tConstructed in 1867, the barn was used to house livestock, such as oxen, and to store farm supplies, equipment, hay and food for the animals. On April 28th, 2008, a devastating fire destroyed the barn and the connecting farmer’s cottage. Today, the barn is being rebuilt. The barn’s framework is up but work is still needed to shingle the roof, add windows and doors, build stalls, and finish the exterior with clapboards and painting. The barn is expected to be completed in 2017. \r\n\t The working barn is not only a home for animals, but plays a primary role in Norlands educational programming as a place to experience 19-century farm life. The barn also provides space for dances and other public events held at Norlands."
        loc.audioBlurbURL = Bundle.main.url(forResource: "Barn", withExtension: "m4a")
        loc.coordinate = CLLocationCoordinate2D(latitude: 44.407698, longitude: -70.210013)
        //Add the first test location
        locations.append(loc)
        
        //Create aother test location
        loc = Location()
        loc.title = "Church"
        loc.mainImage = UIImage(named: "churchlist")!
        loc.images = [UIImage(named: "churchlist")!, UIImage(named: "Church 1")!,UIImage(named: "Church 2")!,UIImage(named: "Church 3")!]
        loc.blurb = "\tBuilt in 1828, the church – or meeting house as it was called then - is the oldest standing building at Norlands and was the first church in the town of Livermore to have a steeple with its spire reaching 105 feet high. Israel Washburn Sr., and his neighbor, Otis Pray, donated the land to construct a Universalist Meeting House. They raised money by selling pews. Architect Martin Cushing, prominent in this region, drew up the plans and over 1,000 people attended the dedication on June 18, 1829.  The row of horse sheds, built to the east and north of the meeting house, have been replicated and you can see them today behind the meeting house. \n \tChurch services were held regularly until 1869 when a new church was built in Livermore. The church at Norlands continued to be used for summer services until the early-20th century. \n\t In 1873, the meeting house was remodeled by George Harding, one of Maine’s most prominent architects. The rear choir gallery was removed as well as the high pulpit. The original clear glass windows were replaced with stained glass. Artist Valentine Keiler painted the plaster walls and ceiling with decorative trompe d’oeil (painting to fool the eye) designs. \n\t Today, the meeting house contains its original pews and organ.  It seats approximately 200 people and is open during events and rented for wedding ceremonies."
        loc.audioBlurbURL = Bundle.main.url(forResource: "Church", withExtension: "m4a")
        loc.coordinate = CLLocationCoordinate2D(latitude: 44.406760, longitude: -70.209997)
        //Add the first test location
        locations.append(loc)
        
        
        //Create aother test location
        loc = Location()
        loc.title = "Library"
        loc.mainImage = UIImage(named: "librarylist")!
        loc.images = [UIImage(named: "churchlist")!, UIImage(named: "library1")!,UIImage(named: "library2")!]
        loc.blurb = "\tThe Washburn Memorial Library was built in 1883 and dedicated in 1885 to the memory of Israel and Patty Washburn. It was the vision of Israel Washburn, Jr. but it took financing from his brothers Elihu and William Drew, to make it a reality. When dedicated on August 5th 1885, speeches were made by Elihu Washburn, Hannibal Hamlin, and the honorable William P. Fry, Maine State Senator. \n\t Built of Hallowell granite with a slate roof and stained glass windows, the Library is considered gothic in style and was designed by architect Alexander Currier from Hallowell, Maine. First used as a lending library for the town of Livermore, the Library now houses the family’s archival documents and artifacts and is used for programming and during events."
        loc.audioBlurbURL = Bundle.main.url(forResource: "Library", withExtension: "m4a")
        loc.coordinate = CLLocationCoordinate2D(latitude: 44.408343, longitude: -70.210804)
        //Add the first test location
        locations.append(loc)
        
        
        //Create aother test location
        loc = Location()
        loc.title = "Pondside"
        loc.mainImage = UIImage(named: "Pondsidelist")!
        loc.images = [UIImage(named: "Pondsidelist")!, UIImage(named: "pondside1")!,UIImage(named: "pondside2")!,UIImage(named: "pondside3")!]
        loc.blurb = "\tAbout a quarter of a mile down the road from Norlands is a residence known as Pondside, located on Bartlett Pond. Pondside is an eighteenth-century cape-style home with an attached ell. Though the date of the original home construction is not known, the ell was added in 1940 and contained Cadwallader Lincoln Washburn’s art studio. Cadwallader Lincoln, son of William Drew (the youngest of the original 10 children), was a famous dry-point etcher who moved into the house with his wife Margaret in July of 1964.\t\n The property was donated to Norlands in 1979 and was used for eighteenth-century school programs and live-ins as well as for housing interns and caretakers. The building is currently used for storage until it is renovated again for public use."
        loc.audioBlurbURL = Bundle.main.url(forResource: "Pondside", withExtension: "m4a")
        loc.coordinate = CLLocationCoordinate2D(latitude: 44.400495, longitude: -70.208640)
        //Add the first test location
        locations.append(loc)
        
        //Create aother test location
        loc = Location()
        loc.title = "School House"
        loc.mainImage = UIImage(named: "SchoolhouseSepia")!
        loc.images = [UIImage(named: "Schoolhouse1")!, UIImage(named: "Schoolhouse2")!,UIImage(named: "Schoolhouse3")!]
        loc.blurb = "\tThe schoolhouse at Norlands is a replica of the original 1853 District #7 school that stood in this location. All ten Washburn children attended school here. It is typical of a one-room school building of the period with a cloak room, book closet, and attached woodshed. It has plain white plaster walls above wainscoting, one wooden blackboard, and no lighting except for what nature provides. The schoolhouse is currently used as a learning center for guests of all ages to experience the education of the Washburn’s era in 1853."
        loc.audioBlurbURL = Bundle.main.url(forResource: "School_House", withExtension: "m4a")
        loc.coordinate = CLLocationCoordinate2D(latitude: 44.40908, longitude: -70.211121)
        //Add the first test location
        locations.append(loc)
        
        

        
    }
    
    
    
}
