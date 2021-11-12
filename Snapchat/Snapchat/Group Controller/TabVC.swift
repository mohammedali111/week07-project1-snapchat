//
//  TabVC.swift
//  Snapchat
//
//  Created by m.Al-qhtani on 07/04/1443 AH.
//

import UIKit
import Firebase
class TabVC: UITabBarController, UITabBarControllerDelegate {
  override func viewDidLoad() {
    super.viewDidLoad()
    delegate = self
  }
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    let item1 = UserVC()
    let item2 = ProfileVC()
      let item3 = FavoriteVC()
    let icon1 = UITabBarItem(title: "chat", image: UIImage(systemName: "contextualmenu.and.cursorarrow"), selectedImage: UIImage(systemName: "contextualmenu.and.cursorarrow"))
    let icon2 = UITabBarItem(title: "profile", image: UIImage(systemName: "person"), selectedImage: UIImage(systemName: "person"))
      let icon3 = UITabBarItem(title: "favorite", image: UIImage(systemName: "star"), selectedImage: UIImage(systemName: "star"))
    item1.tabBarItem = icon1
    item2.tabBarItem = icon2
      item3.tabBarItem = icon3
    let controllers = [item1,item2,item3] //array of the root view controllers displayed by the tab bar interface
    self.viewControllers = controllers
  }
  func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    print("Should select viewController: \(viewController.title ?? "") ?")
    return true;
  }
}