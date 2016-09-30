//
//  AppDelegate.swift
//  VirtualTourist
//
//  Created by Sugandha Naolekar on 09/01/16.
//  Copyright © 2016 icode. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let stack = CoreDataStack(modelName: "VirtualTouristModel")!

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        return true
    }
}

