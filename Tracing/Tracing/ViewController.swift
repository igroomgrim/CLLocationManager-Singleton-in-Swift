//
//  ViewController.swift
//  Tracing
//
//  Created by Anak Mirasing on 5/5/2559 BE.
//  Copyright © 2559 iGROOMGRiM. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, LocationServiceDelegate {
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var latLabel: UILabel!
    @IBOutlet weak var lonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LocationService.sharedInstance.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Action
    @IBAction func startButtonTapped(sender: AnyObject) {
        LocationService.sharedInstance.startUpdatingLocation()
    }
    
    @IBAction func stopButtonTapped(sender: AnyObject) {
        LocationService.sharedInstance.stopUpdatingLocation()
    }
    
    // MARK: LocationService Delegate
    func tracingLocation(currentLocation: CLLocation) {
        let lat = currentLocation.coordinate.latitude
        let lon = currentLocation.coordinate.longitude
        
        latLabel.text = "lat : \(lat)"
        lonLabel.text = "lon : \(lon)"
    }
    
    func tracingLocationDidFailWithError(error: NSError) {
        print("tracing Location Error : \(error.description)")
    }

}

