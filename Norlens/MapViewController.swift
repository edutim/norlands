

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    var mapAnnotations: [MKAnnotation]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Set the initial location of the mapview
        let initialLocation = CLLocation(latitude: 44.4042, longitude: -70.2096)
        let regionRadius: CLLocationDistance = 25000
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(initialLocation.coordinate,
                                                                  regionRadius * 2.0, regionRadius * 2.0)
        self.mapView.setRegion(coordinateRegion, animated: true)
        
        mapAnnotations = createAnnotations()
        mapView!.addAnnotations(mapAnnotations!)
    }

    func createAnnotations() -> [MKAnnotation] {
        var tempLocs = [MKAnnotation]()
        for l in Manager.shared.locations {
            var a = MapAnnotation(title: l.title, locationName: l.title, coordinate: l.coordinate)
            tempLocs.append(a)
        }
        return tempLocs
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    /*
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        if (annotation is MKUserLocation) {
            return nil
        }
        
        let reuseId = "rid"
        
        var aView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseId)
        if aView == nil {
            
            print("h")
            
            //let school = schools.filter({(school: School) in school.title! == annotation.title!})
            
            
            
            //aView?.image = NSImage(named: "iconRed")
            aView?.canShowCallout = true
            var butt = UIButton()
            //butt.title = "More Info"
            //butt.target = self
            //butt.action = #selector(self.callOutPressed)
            //aView?.rightCalloutAccessoryView = butt
        } else {
            aView?.annotation = annotation
        }
        
        let a = aView as! MapAnnotation
        
        return a
        
    }
 */
 
    func mapView(mapView: MKMapView, didSelectAnnotationView view: MKAnnotationView) {
        
    }
    
    func mapView(mapView: MKMapView, didDeselectAnnotationView view: MKAnnotationView) {
        
    }
    
    /*
    func callOutPressed() {
        self.performSegueWithIdentifier("moreInfo", sender: self)
        
    }
    
    override func prepareForSegue(segue: NSStoryboardSegue, sender: AnyObject?) {
        let s = segue.destinationController as? DetailViewController
        s?.school = selectedMKAnnotation
        
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
