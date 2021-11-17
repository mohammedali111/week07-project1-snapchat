//
//  LocationVC.swift
//  SnnapChatApp
//
//  Created by dmdm on 15/11/2021.
//


import UIKit
import MapKit
//import CoreLocation

class MapVC: UIViewController {
    let mapView = MKMapView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Location"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let Asir = MKPointAnnotation()
        Asir.title = "Me"
        Asir.coordinate = CLLocationCoordinate2D(latitude: 18.2497107, longitude: 42.4584669)
        mapView.addAnnotation(Asir)
        setupMapView()
    }
    
    func setupMapView() {
        view.addSubview(mapView)
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        mapView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        mapView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        mapView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        
        
    }
    
}
