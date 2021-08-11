import UIKit

class MainTabController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
    }
    
    func configureViewControllers() {
        let recommend = templateNavigationController(unselectedImage: UIImage(imageLiteralResourceName: "hand.thumbsup"), selectedImage: UIImage(imageLiteralResourceName: "hand.thumbsup"), rootViewController: RecommendController())
        let search = templateNavigationController(unselectedImage: UIImage(imageLiteralResourceName: "magnifyingglass"), selectedImage: UIImage(imageLiteralResourceName: "magnifyingglass"), rootViewController: SearchController())
        let profile = templateNavigationController(unselectedImage: UIImage(imageLiteralResourceName: "person"), selectedImage:UIImage(imageLiteralResourceName: "person"), rootViewController: ProfileController())
        
        viewControllers = [recommend, search, profile]
        
    }
    
    func templateNavigationController(unselectedImage:UIImage, selectedImage:UIImage, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.navigationBar.barTintColor = .white
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.image = selectedImage

        return nav
    }
}
