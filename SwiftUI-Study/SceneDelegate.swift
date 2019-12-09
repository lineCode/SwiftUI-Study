//
//  SceneDelegate.swift
//  SwiftUI-Study
//
//  Created by wave on 2019/12/9.
//  Copyright © 2019 Barrage. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    struct Student {
        let name: String
        let scores: [科目: Int]
    }

    enum 科目: String, CaseIterable {
        case 语文, 数学, 英语, 物理
    }
    
    func average(_ scores: [科目: Int]) -> Double {
        return Double(scores.values.reduce(0, +)) / Double(科目.allCases.count)
    }

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions:
        UIScene.ConnectionOptions) {
        
//        let s1 = Student(name: "zz", scores: [.语文: 86, .数学: 80, .英语: 90, .物理: 67])
//        let s2 = Student(name: "hh", scores: [.语文: 90, .数学: 80, .英语: 70, .物理: 90])
//        let s3 = Student(name: "bb", scores: [.语文: 89, .数学: 76, .英语: 98, .物理: 99])
//        
//        let students = [s1, s2, s3]
//        
//        let bestStudent = students
//            .map {($0, average($0.scores))}
//            .sorted{$0.1 > $1.1}
//            .first
//        print(bestStudent)
        
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

