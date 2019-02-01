//
//  AppDelegate.swift
//  NYTBestsellers
//
//  Created by Alex Paul on 1/24/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    /////////////////Set up View Controllers/////////////////
    let BSVC  = BestSellersViewController()
    let FVC = FavoritesViewController()
    let SVC = SettingViewController()
    let DVC = DetailViewController()
    /////////////////Set Navigation to start at/////////////////
    let nav = UINavigationController.init(rootViewController: BSVC)
    /////////////////Set up Tab View Controller/////////////////
    let tab = UITabBarController()
    /////////////////Connect ViewControllers to tab/////////////////
    //nav.title = "Best Sellers"
    //FVC.title = "Favorites"
    //SVC.title = "Settings"
    nav.tabBarItem = UITabBarItem(title: "Best Sellers", image: UIImage.init(named: "icons8-book-shelf-25"), selectedImage: UIImage.init(named: "icons8-book-shelf-25"))
    FVC.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage.init(named: "icons8-bookmark-filled-25"), selectedImage: UIImage.init(named: "icons8-bookmark-filled-25"))
    SVC.tabBarItem = UITabBarItem(title: "Settings", image: UIImage.init(named: "icons8-services-filled-25"), selectedImage: UIImage.init(named: "icons8-services-filled-25"))
    
        tab.viewControllers = [nav,FVC,SVC]
    
    /////////////////Window Set UP/////////////////
    window = UIWindow.init(frame: UIScreen.main.bounds)
    window?.rootViewController = tab
    window?.makeKeyAndVisible()
        return true
  }

  func applicationWillResignActive(_ application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(_ application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(_ application: UIApplication) {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(_ application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }


}

