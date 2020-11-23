//
//  MapController.swift
//  SampleMapKitWithAnnotation
//
//  Created by Aji Saputra Raka Siwi on 22/11/20.
//

import UIKit
import MapKit

class SampleMapKitController: UIViewController {
    
    private var sampleMapKitView: SampleMapKitView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.sampleMapKitView = SampleMapKitView(frame: self.view.frame)
        self.view = self.sampleMapKitView
        
        self.view.backgroundColor = .white
        
        let coordinate = CLLocationCoordinate2D(latitude: 1.082828, longitude: 104.030457)
        let annotation = SampleMapAnnotation(coordinate: coordinate, title: "Sample Title", subtitle: "Sample Subtitle")
        self.sampleMapKitView.mapView.addAnnotation(annotation)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.barTintColor = .clear
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    }
}

extension SampleMapKitController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if let annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier) as? MKMarkerAnnotationView {
            annotationView.animatesWhenAdded = true
            annotationView.titleVisibility = .adaptive
            return annotationView
        }
        return nil
    }
}
