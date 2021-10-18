//
//  AppDelegate.swift
//  TextViewCrashDemo
//
//  Created by Ringo Müller on 18.10.21.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    self.window = UIWindow(frame: UIScreen.main.bounds)
    self.window?.rootViewController = ViewController()
    self.window?.makeKeyAndVisible()
    return true
  }
}
