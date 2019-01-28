//
//  BookCollectionViewCell.swift
//  NYTBestsellers
//
//  Created by Pursuit on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class BookCollectionViewCell: UICollectionViewCell {
    
    
    
    lazy var myImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage.init(named: "placeholder-image-2")
        image.contentMode = .scaleAspectFit
        return image
    }()

    lazy var myLabel: UILabel = {
        let label = UILabel()
        label.text = "Diego"
        label.textColor = .green
        label.textAlignment = .center
        return label
    }()
    
    lazy var mytext: UITextView = {
        let text = UITextView()
        text.text = "Blah"
        text.backgroundColor = .purple
        return text
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blue
        SetUp()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func SetUp(){
        addSubview(myImage)
        addSubview(myLabel)
        addSubview(mytext)
myImage.translatesAutoresizingMaskIntoConstraints = false
myImage.topAnchor.constraint(equalTo:safeAreaLayoutGuide.topAnchor,constant: 0).isActive = true
myImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.7).isActive = true
myImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
myImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
/////////////////////////////////////////////////////////////////////////////////////////////
myLabel.translatesAutoresizingMaskIntoConstraints = false
myLabel.topAnchor.constraint(equalTo: myImage.bottomAnchor, constant: 0).isActive = true
myLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant:0).isActive = true
myLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant:0).isActive = true
/////////////////////////////////////////////////////////////////////////////////////////////
mytext.translatesAutoresizingMaskIntoConstraints = false
mytext.topAnchor.constraint(equalTo: myLabel.bottomAnchor, constant: 0).isActive = true
mytext.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1).isActive = true
mytext.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
}
