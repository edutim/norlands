

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    var mapAnnotations: [MKAnnotation]?
    
    var selectedLocation: Location?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Set the initial location of the mapview
        //let initialLocation = CLLocation(latitude: 44.406842, longitude: -70.209998)
        let initialLocation = CLLocation(latitude: 44.405000, longitude: -70.209998)
        let regionRadius: CLLocationDistance = 300
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(initialLocation.coordinate,
                                                                  regionRadius * 2.0, regionRadius * 2.0)
        self.mapView.setRegion(coordinateRegion, animated: true)
        self.mapView.mapType = .hybrid
        mapAnnotations = createAnnotations()
        mapView!.addAnnotations(mapAnnotations!)
    }

    func createAnnotations() -> [MKAnnotation] {
        var tempLocs = [MKAnnotation]()
        for l in Manager.shared.locations {
            let a = MapAnnotation(title: l.title, locationName: "", coordinate: l.coordinate)
            tempLocs.append(a)
        }
        return tempLocs
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if (annotation is MKUserLocation) {
            return nil
        }
        
        let reuseID = "rID"
        
        var aView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseID)
        
        if aView == nil {
            aView = MKAnnotationView(annotation: annotation, reuseIdentifier: reuseID)
            aView?.canShowCallout = true
            aView?.image = UIImage(named: "map-marker")
            let button = UIButton(type: .detailDisclosure)
            button.addTarget(self, action: #selector(self.callOutPressed), for: .touchDown)
            aView?.rightCalloutAccessoryView = button
        }
        return aView
    }
    
    @objc func callOutPressed() {
        performSegue(withIdentifier: "locationDetailFromMaps", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! LocationDetailController
        dest.location = selectedLocation!
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        var view = Manager.shared.locations.filter() { $0.title == (view.annotation?.title)! }
        if view.count > 0 {
            selectedLocation = view[0]
        }
    }
    
    func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
        selectedLocation = nil
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
