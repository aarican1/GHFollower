//
//  GFError.swift
//  GHFollowers
//
//  Created by Abdurrahman Arıcan on 13.02.2025.
//

import Foundation

enum GFError : String, Error {
    
    case invalidUsername      = "This username created invalid request. Please try again."
    case unableToCompleteData =  "Unable to complete your request. Please check your internet connection."
    case invalidResponse      = "Invalid response from  the server. Please try again."
    case dataReceived         = "The data received from the server was invalid. Please try again."
    case unableToFavorites    = "There was an error favoriting this user. Please try again."
    case alreadyInFavorites   = "You've already favorited this user."
 }
