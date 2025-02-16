//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Abdurrahman Arıcan on 13.02.2025.
//

import UIKit
import SafariServices


extension UIViewController {
    
    func presentGFAlert(title : String, message : String, buttonTitle : String){
        
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(alertTitle: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
    
    func presentDefaultAlert(){
            let alertVC = GFAlertVC(alertTitle: "Something went wrong", message: "We were unable to complete your task at thiss time. Please try again.", buttonTitle: "Ok")
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            present(alertVC, animated: true)
        
    }
    
    
    func presentSafariVc(with url : URL){
        
            let safariVC                       = SFSafariViewController(url: url)
            safariVC.preferredControlTintColor = UIColor.systemGreen
            present(safariVC, animated: true)
    }
}
