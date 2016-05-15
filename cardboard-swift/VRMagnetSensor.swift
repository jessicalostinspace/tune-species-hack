//
//  VRMagnetSensor.swift
//  cardboard-swift
//
//  Created by Jessica Wilson on 5/14/16.
//  Copyright © 2016 nzff. All rights reserved.


import Foundation
import CoreMotion
import CoreLocation


public class VRMagnetSensor {
    
    let CLManager = CLLocationManager()
    let manager = CMMotionManager()
    var previousMagnetData = ( x:0.0, y:0.0, z:0.0 )
    var callback:((type:String) ->())?
    
    var magnetX: CLHeadingComponentValue = 0.0
    
    init() {
        
        if manager.magnetometerAvailable && !manager.magnetometerActive {
            
            let sensorInterval = NSTimeInterval(0.8)
            manager.magnetometerUpdateInterval = sensorInterval
            manager.startMagnetometerUpdatesToQueue(NSOperationQueue.mainQueue(), withHandler: {
                (data, error) in
                
                let field = data!.magneticField
                
                print("MAGNETIC DATA x \(field.x)   y \(field.y)   z \(field.z)")
                
                if(field.x < self.previousMagnetData.x-30 && self.previousMagnetData.x != -0.0) {
                    dispatch_async(dispatch_get_main_queue()) {
                        self.callback!(type:"onPress")
                    }
                }
                self.previousMagnetData = ( x:field.x, y:field.y, z:field.z )
            })
        }
        

        if (CLManager.heading != 0.0){
            print(magnetX)
        }
        
    }
    
    
}