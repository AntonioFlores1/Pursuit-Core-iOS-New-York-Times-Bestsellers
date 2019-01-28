//
//  FavoriteCollectionViewCell.swift
//  NYTBestsellers
//
//  Created by Pursuit on 1/27/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class FavoriteCollectionViewCell: UICollectionViewCell {
    
    lazy var bookimage:UIImageView = {
        let image = UIImageView()
        image.image = UIImage.init(named: "placeholder-image-2")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var bookdescription:UITextView = {
        let textView = UITextView()
        textView.text = "HIYA"
        textView.backgroundColor = .magenta
        return textView
    }()
    
    lazy var timeLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .gray
        label.text = "Antonio"
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .green
        addSubview(bookimage)
        addSubview(timeLabel)
        addSubview(bookdescription)
        Constraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func Constraints() {
        addSubview(bookimage)
        addSubview(timeLabel)
        addSubview(bookdescription)
        
        bookimage.translatesAutoresizingMaskIntoConstraints = false
        bookimage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        bookimage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.7).isActive = true
        bookimage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        bookimage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
timeLabel.translatesAutoresizingMaskIntoConstraints = false
timeLabel.topAnchor.constraint(equalTo: bookimage.bottomAnchor, constant: 0).isActive = true
timeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
timeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        
        bookdescription.translatesAutoresizingMaskIntoConstraints = false
        bookdescription.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 0).isActive = true
        bookdescription.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1).isActive = true
        bookdescription.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
}
