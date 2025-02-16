//
//  UIHelper.swift
//  GHFollowers
//
//  Created by Abdurrahman Arıcan on 13.02.2025.
//

import UIKit

enum UIHelper {
    
    static func createCollectionViewFlowLayout(in view  : UIView)-> UICollectionViewFlowLayout{
        let width                        = view.bounds.width
        let padding : CGFloat           = 12
        let minimumItemSpacing :CGFloat = 10
        let availableWidth              = width  - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth                   = availableWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset  = UIEdgeInsets(top: padding, left: padding, bottom:padding*2, right:padding)
        flowLayout.minimumLineSpacing = padding * 3
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        return flowLayout
    }
    
}
