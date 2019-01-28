//
//  BestView.swift
//  NYTBestsellers
//
//  Created by Pursuit on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class BestView: UIView {



    
//var something = []()
    
    
    
    
    
  
    
    lazy var myCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: 300, height: 340)
        layout.sectionInset = UIEdgeInsets.init(top: 20, left: 10, bottom: 20, right: 10)
        let Collection = UICollectionView(frame: self.bounds, collectionViewLayout: layout)
    
        Collection.backgroundColor = .red
        layout.scrollDirection = .horizontal
        return Collection
    }()
    
    lazy var myPicker: UIPickerView = {
        let picker = UIPickerView()
       
        picker.backgroundColor = .white
        return picker
    }()
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(myCollection)
        addSubview(myPicker)
        myCollection.register(BookCollectionViewCell.self, forCellWithReuseIdentifier: "BookCell")
        SetUp()
       // categoryAPICall()
       // listOfBook()
       // dump(collectionList)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func SetUp(){
        addSubview(myCollection)
        addSubview(myPicker)
myCollection.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myCollection.widthAnchor.constraint(equalTo: widthAnchor),
            myCollection.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            myCollection.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.6)
            ])
myPicker.translatesAutoresizingMaskIntoConstraints = false
myPicker.topAnchor.constraint(equalTo: myCollection.bottomAnchor, constant:0).isActive = true
myPicker.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1).isActive = true
myPicker.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}



