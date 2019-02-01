//
//  FavoriteView.swift
//  NYTBestsellers
//
//  Created by Pursuit on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class FavoriteView: UIView {

    lazy var CollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: 310, height: 350)
        layout.sectionInset = UIEdgeInsets.init(top: 20, left: 10, bottom: 20, right: 10)
        let Collection = UICollectionView(frame: self.bounds, collectionViewLayout: layout)
        Collection.dataSource = self
        Collection.delegate = self
        Collection.backgroundColor = .red
        layout.scrollDirection = .vertical
        return Collection
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(CollectionView)
        CollectionView.register(FavoriteCollectionViewCell.self, forCellWithReuseIdentifier: "FavoriteCell")
        SetUp()
        backgroundColor = .yellow
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func SetUp(){
        addSubview(CollectionView)
        CollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            CollectionView.widthAnchor.constraint(equalTo: widthAnchor),
            CollectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            CollectionView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor)
            ])
    }
}
extension FavoriteView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavoriteCell", for: indexPath) as? FavoriteCollectionViewCell else {return UICollectionViewCell()}
        
       return cell
    }
    
    
}

extension FavoriteView: UICollectionViewDelegate {
    
}
