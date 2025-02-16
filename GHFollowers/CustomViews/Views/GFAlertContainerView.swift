//
//  GFAlertContainerView.swift
//  GHFollowers
//
//  Created by Abdurrahman Arıcan on 15.02.2025.
//

import UIKit

class GFAlertContainerView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure(){
        layer.cornerRadius  = 16
        backgroundColor     =   .systemBackground
        layer.borderWidth   = 2
        layer.borderColor   = UIColor.white.cgColor
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
