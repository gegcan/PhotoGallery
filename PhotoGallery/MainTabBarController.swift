//
//  MainTabBarController.swift
//  PhotoGallery
//
//  Created by Александр on 16.08.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        let photosVC = PhotosCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        
        viewControllers = [generateNavigationController(rootViewController: photosVC, title: "Photos", image: UIImage(systemName: "photo.on.rectangle")!),
        generateNavigationController(rootViewController: ViewController(), title: "Favorite", image: UIImage(systemName: "list.star")!)
        ]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
