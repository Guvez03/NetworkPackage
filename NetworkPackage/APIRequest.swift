//
//  APIRequest.swift
//  MovieDBProject
//
//  Created by Ahmet Güvez on 14.05.2022.
//

import Foundation

public struct APIRequest <T: Codable> {
    public let action: ActionHelper
    public let data: T?
    
    public init(action: ActionHelper, data: T){
        self.action = action
        self.data = data
    }
}
