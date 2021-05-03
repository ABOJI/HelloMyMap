//
//  ViewController.swift
//  HelloMyMap
//
//  Created by 蔡旻軒 on 2021/5/3.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController {

    let locationManager = CLLocationManager()
    
    @IBOutlet weak var mainMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // ask for location permission
        locationManager.requestAlwaysAuthorization()
        
        // Class method
        if !CLLocationManager.locationServicesEnabled() {
            // show alert to user
        } else {
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.activityType = .automotiveNavigation
            locationManager.delegate = self
            locationManager.startUpdatingLocation()
        }
    }


}

