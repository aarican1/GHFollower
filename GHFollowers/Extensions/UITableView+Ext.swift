//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Abdurrahman Arıcan on 15.02.2025.
//

import UIKit

extension UITableView {
    
    func removeExcessCells(){
        tableFooterView = UIView(frame: .zero)
    }
}
