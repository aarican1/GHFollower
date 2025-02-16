//
//  GFTabBarController.swift
//  GHFollowers
//
//  Created by Abdurrahman Arıcan on 15.02.2025.
//

import UIKit

class GFTabBarController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor         = .systemGreen
        UITabBar.appearance().backgroundColor   = .systemBackground
        viewControllers                         =  [createSearchNC(), createFavoriteListNC()]
      
    }
    
    ///Search NavigationController Creater
    func createSearchNC()-> UINavigationController{
        let searchVC = SearchVC()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
   
        return UINavigationController(rootViewController: searchVC)
    }
    
    ///Favorites NavigationController Creater
    func createFavoriteListNC()-> UINavigationController{
        let favoriteListVC          = FavoritesListVC()
        favoriteListVC.title        = "Favorites"
        favoriteListVC.tabBarItem   = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        
        return UINavigationController(rootViewController: favoriteListVC)
    }
}
