//
//  Synchronizer.swift
//  SwiftSynchronization
//
//  Created by Sharma, Piyush on 9/26/16.
//  Copyright © 2016 Sharma, Piyush. All rights reserved.
//

import Foundation

class Synchronizer {
    
    class func lock<T>(object: T, closure: () -> ()) {
        objc_sync_enter(object)
        closure()
        objc_sync_exit(object)
    }
}
