//
//  PhotosCollectionViewController.swift
//  PhotoGallery
//
//  Created by Александр on 16.08.2022.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .orange
        
        setupCollectioView()
        setupNavigationBar()
    }
    
    private func setupCollectioView() {
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
    }
    
    private func setupNavigationBar() {
        let titleLabel = UILabel()
        titleLabel.text = "PHOTOS"
        titleLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        titleLabel.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: titleLabel)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .red
        
        return cell
    }
}
