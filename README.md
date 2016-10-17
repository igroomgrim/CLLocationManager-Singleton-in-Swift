# CLLocationManager-Singleton-in-Swift
Simply to share location services.
Example Singleton class use for share location service in swift.
This class will auto update location when user change current location.

## Updated for Swift 3
[Swift 3 Version](https://github.com/igroomgrim/CLLocationManager-Singleton-in-Swift/tree/swift-3)

## Requirements
* Xcode 7 or higher
* Swift 2.0+
* Apple LLVM compiler
* iOS 8.0 or higher
* ARC

## Installation
* Copy LocationService.swift to your project
* add the key "NSLocationAlwaysUsageDescription" to a property list(Info.plist) and set its value to some message what you want. etc. "We requires access to your phone's location bla bla bla :P"
* or add the key "NSLocationWhenInUseUsageDescription" if you want to access the user's location normally while running in the foreground.


## How to use - Get currentLocation singleton
Call startUpdatingLocation() for start update your current location
```swift
LocationService.sharedInstance.startUpdatingLocation()
```
Call stopUpdatingLocation() if you want to stop update your current location 
```swift
LocationService.sharedInstance.stopUpdatingLocation()
```
And if you want to get your current location just use
```swift
LocationService.sharedInstance.currentLocation
```

## How to use - Get real time location by delegate
Conform LocationServiceDelegate protocol to your view controller and don't forget import CoreLocation
```swift
import CoreLocation
class ViewController: UIViewController, LocationServiceDelegate {
	override func viewDidLoad() {
        super.viewDidLoad()
        
        // Don't forget implement delegate 
        LocationService.sharedInstance.delegate = self
    }
}
```

We have 2 delegation method for tracing your location and let you know if has error
```swift
func tracingLocation(currentLocation: CLLocation){}
func tracingLocationDidFailWithError(error: NSError) {} 
```
## Example Appication : Tracing
This example app uses location services in a potentially nonobvious way while running in the foreground or the background. 
You can see how to use in example application in this repository ... Good luck, Have fun :P

## Contact Me

Anak Mirasing

- https://github.com/igroomgrim
- https://www.linkedin.com/in/anakmirasing
- https://twitter.com/igroomgrim
- http://www.igroomgrim.com/
- thaihooligan@hotmail.com
