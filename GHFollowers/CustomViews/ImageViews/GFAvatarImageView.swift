//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by Abdurrahman Arıcan on 13.02.2025.
//

import UIKit

class GFAvatarImageView: UIImageView {

    let placeholderImage = Images.placeholder
    let cache            = NetworkManager.shared.cache
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure(){
        layer.cornerRadius  = 10
        clipsToBounds       = true
        image               = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    func downloadImage(fromURL url :String){
        Task{ image = await NetworkManager.shared.downloadImage(from: url) ?? placeholderImage }
    }
    
}


