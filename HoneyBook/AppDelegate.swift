import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        // 하단 탭바
        UITabBar.appearance().barTintColor = UIColor.white
        // 상단 네비게이션 바
        UINavigationBar.appearance().barTintColor = UIColor.white

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let tabVC = MainTabController()
        window?.rootViewController = tabVC
        
        return true
    }
}
