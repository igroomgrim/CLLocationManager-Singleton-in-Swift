//
//  LocationService.swift
//  
//
//  Created by Anak Mirasing on 5/18/2558 BE.
//
//

import Foundation
import CoreLocation


class LocationService: NSObject, CLLocationManagerDelegate {
    class var sharedInstance: LocationService {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            
            static var instance: LocationService? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = LocationService()
        }
        return Static.instance!
    }
    
    var locationManager:CLLocationManager?
    var currentLocation:CLLocation?
    var driver_id:String?
    
    override init() {
        super.init()
        self.locationManager = CLLocationManager()
        self.locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager?.distanceFilter = 200
        self.locationManager?.delegate = self
    }
    
    func startUpdatingLocation() {
        println("Starting Location Updates")
        self.locationManager?.startUpdatingLocation()
    }
    
    func stopUpdatingLocation() {
        println("Stop Location Updates")
        self.locationManager?.stopUpdatingLocation()
    }
    
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        var location: AnyObject? = (locations as NSArray).lastObject
        
        self.currentLocation = location as? CLLocation
        
        // use for real time update location
        // updateLocation(self.currentLocation)
        
    }
    
    func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
        if (error != nil) {
            println("Update Location Error : \(error.description)")
        }
    }
    
    func updateLocation(currentLocation:CLLocation){
        let lat = currentLocation.coordinate.latitude
        let lon = currentLocation.coordinate.longitude
    }
}
