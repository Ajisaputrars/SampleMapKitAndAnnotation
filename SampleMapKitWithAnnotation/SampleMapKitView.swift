//
//  SampleMapKitView.swift
//  SampleMapKitWithAnnotation
//
//  Created by Aji Saputra Raka Siwi on 22/11/20.
//

import UIKit
import MapKit

class SampleMapKitView: UIView {
    
    let mapView: MKMapView = {
        let mapView = MKMapView()
        mapView.register(MKMarkerAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        return mapView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = .white
        
        self.addSubview(mapView)
        
        self.mapView.snp.makeConstraints { (make) in
            make.top.left.right.bottom.equalTo(self)
        }
    }
}
