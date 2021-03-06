//
//  SampleMapAnnotation.swift
//  SampleMapKitWithAnnotation
//
//  Created by Aji Saputra Raka Siwi on 23/11/20.
//

import UIKit
import MapKit

final class SampleMapAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String?, subtitle: String?){
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        
        super.init()
    }
}
