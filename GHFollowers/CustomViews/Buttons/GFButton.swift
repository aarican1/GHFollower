//
//  GFButton.swift
//  GHFollowers
//
//  Created by Abdurrahman Arıcan on 12.02.2025.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(color : UIColor, title : String){
        self.init(frame: .zero)
        set(color: color, title: title)
       
    }
    
    
    private func configure(){
        configuration               = .filled()
        configuration?.cornerStyle  = .medium
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    func set(color : UIColor, title : String){
        
        configuration?.baseBackgroundColor = color
        configuration?.baseForegroundColor = .white
        configuration?.title = title
    }
}

#Preview{
    GFButton(color: .systemPink, title: "Test Button")
}
