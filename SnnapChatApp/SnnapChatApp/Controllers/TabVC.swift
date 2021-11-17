//
//  TabVC.swift
//  SnnapChatApp
//
//  Created by dmdm on 15/11/2021.
//

import UIKit


class TabVC: UITabBarController {
  fileprivate func createNavController(for rootViewController: UIViewController,
                           title: String,
                           image: UIImage) -> UIViewController {
      let navController = UINavigationController(rootViewController: rootViewController)
      navController.tabBarItem.title = title
      navController.tabBarItem.image = image
      navController.navigationBar.prefersLargeTitles = true
      rootViewController.navigationItem.title = title
      return navController
    }
  func setupVCs() {
     viewControllers = [
        createNavController(for:UsersVC (), title: NSLocalizedString("Users", comment: ""), image: UIImage(systemName: "person.3")!),
        createNavController(for:ConversationVC (), title: NSLocalizedString("Conversation", comment: ""), image: UIImage(systemName: "message")!),
   //     createNavController(for:ChatVC(), title: NSLocalizedString("Chat", comment: ""), image: UIImage(systemName: "message")!),
        createNavController(for:CamVC(), title: NSLocalizedString("Cam", comment: ""), image: UIImage(systemName: "camera")!),
       createNavController(for:MapVC(), title: NSLocalizedString("Location", comment: ""), image: UIImage(systemName: "location")!),
       createNavController(for:ProfileVC(), title: NSLocalizedString("Profile", comment: ""), image: UIImage(systemName: "person")!),
        

     ]
   }
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemBackground
      UITabBar.appearance().barTintColor = .systemBackground
      tabBar.tintColor = .label
      setupVCs()
    
  }
}



//import UIKit
//import Firebase
//
//class TabVC: UITabBarController {
//    fileprivate func createNavController(for rootViewController: UIViewController,
//                                         title: String,
//                                         image: UIImage) -> UIViewController {
//        let navController = UINavigationController(rootViewController: rootViewController)
//        navController.tabBarItem.title = title
//        navController.tabBarItem.image = image
//        navController.navigationBar.prefersLargeTitles = true
//        rootViewController.navigationItem.title = title
//        return navController
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        //    delegate = self
//    }
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        let item1 = LocationVC()
//        let item2 = UsersVC()
//        let item3 = CamVC()
//        let item4 = ProfileVC()
//        let item5 = TikTokVC()
//
//        let icon1 = UITabBarItem(title: "Location", image: UIImage(systemName: "location"), selectedImage: UIImage(systemName: "location"))
//
//        let icon2 =
//        UITabBarItem(title: "chat", image: UIImage(systemName: "contextualmenu.and.cursorarrow"), selectedImage: UIImage(systemName: "contextualmenu.and.cursorarrow"))
//
//        let icon3 = UITabBarItem(title: "Camera", image: UIImage(systemName: "camera"), selectedImage: UIImage(systemName: "camera"))
//
//           let icon4 = UITabBarItem(title: "profile", image: UIImage(systemName: "person"), selectedImage: UIImage(systemName: "person"))
////        let icon5 = UITabBarItem(title: "Contacts", image: UIImage(systemName: "person.3.fill"), selectedImage: UIImage(systemName: "person.3.fill"))
//        let icon5 = UITabBarItem(title: "TikTok", image: UIImage(systemName: "explore"), selectedImage: UIImage(systemName: "explore"))
//
//        item1.tabBarItem = icon1
//        item2.tabBarItem = icon2
//        item3.tabBarItem = icon3
//        item4.tabBarItem = icon4
////        item5.tabBarItem = icon5
//        item5.tabBarItem = icon5
//        let controllers = [item1,item2,item3,item5] //array of the root view controllers displayed by the tab bar interface
//        self.viewControllers = controllers
//    }
//    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
//        print("Should select viewController: \(viewController.title ?? "") ?")
//        return true;
//    }
//}
