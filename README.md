# CLLocationManager-Singleton-in-Swift
Simply to share location services.
Example Singleton class use for share location service in swift.
This class will auto update location when user change current location.

## Requirements
* Xcode 6 or higher
* Apple LLVM compiler
* iOS 6.0 or higher
* ARC

## Installation
Copy LocationService.swift to your project

## How to use
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

## Contact

Anak Mirasing

- https://github.com/igroomgrim
- https://twitter.com/igroomgrim
- http://www.igroomgrim.com/
- thaihooligan@hotmail.com
