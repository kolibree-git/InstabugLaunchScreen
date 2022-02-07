//
//  Created by Tomasz Załoga on 07/02/2022.
//  

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Lifecycle

    lazy var window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)

    // MARK: - AppDelegate

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        sleep(5)
        startApp()
        return true
    }

    func startApp() {
        window?.rootViewController = TestViewController()
        window?.makeKeyAndVisible()
    }
}
