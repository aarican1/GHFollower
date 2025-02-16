//
//  GFEmptyStateView.swift
//  GHFollowers
//
//  Created by Abdurrahman Arıcan on 14.02.2025.
//

import UIKit

class GFEmptyStateView: UIView {
    
    let messageLabel = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let logoImageView = UIImageView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience  init(message: String){
        self.init(frame: .zero)
        messageLabel.text = message
    }
    
    
    private func configure() {
        addSubview(logoImageView)
        configureMessageLabel()
        configureLogoImageView()
    }
    
    
    private func configureMessageLabel(){
        addSubview(messageLabel)
        messageLabel.numberOfLines = 3
        messageLabel.textColor     = .secondaryLabel
        
        let messageLabelCenterYAnchorConstants :CGFloat  = DeviceType.isiPhoneSE || DeviceType.isiPhone8Zoomed ? -90 : -150
        
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: messageLabelCenterYAnchorConstants),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200)])
    }

    
    private func configureLogoImageView(){
        addSubview(logoImageView)
        
        logoImageView.image                                     = Images.emptyStateLogo
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        let logoImageViewBottomAnchorConstants :CGFloat  = DeviceType.isiPhoneSE || DeviceType.isiPhone8Zoomed ? 300 : 170
        
        
        NSLayoutConstraint.activate([
            logoImageView.widthAnchor.constraint(equalTo:self.widthAnchor, multiplier: 0.8),
            logoImageView.heightAnchor.constraint(equalTo:self.heightAnchor, multiplier: 0.8),
            logoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 100),
            logoImageView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: logoImageViewBottomAnchorConstants)
        ])
    }
    
}
