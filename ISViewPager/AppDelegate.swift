//
//  AppDelegate.swift
//  ISViewPager
//
//  Created by invictus on 2016/11/17.
//  Copyright © 2016年 invictus. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let titles = ["标题一","标题二","标题三","标题四","标题五","标题六","标题七","标题八","标题九","标题十"]
        var viewPages = [ViewPager]()
        for title in titles{
            let viewpage = ViewPager(title:title)
            viewPages.append(viewpage)
        }
        let pagesOptions:[UIViewPagerOption] = [
            .TitleBarHeight(50),
            .TitleBarBackgroudColor(UIColor.white),
            .TitleBarScrollType(UIViewPagerTitleBarScrollType.UIViewControllerMenuScroll),
            .TitleFont(UIFont.systemFont(ofSize: 15, weight: 2)),
            .TitleColor(UIColor.black),
            .TitleSelectedColor(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)),
            .TitleItemWidth(90),
            .IndicatorColor(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)),
            .IndicatorHeight(5),
            .BottomlineColor(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)),
            .BottomlineHeight(1)
        ]
        let pages = ISViewPagerContainer(titles: titles, viewPages:viewPages,options: pagesOptions)
        pages.view.backgroundColor = UIColor.white
        let baseVc = UINavigationController(rootViewController: pages)
        baseVc.navigationBar.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        self.window?.rootViewController = baseVc
        self.window?.makeKeyAndVisible()
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

