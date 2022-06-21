//
//  ErrorModel.swift
//  MovieDBProject
//
//  Created by Ahmet Güvez on 14.05.2022.
//

import Foundation

public struct ErrorModel: Error, Codable {
    var message: String?
    
    init(message: String){
        self.message = message
    }
}
public extension ErrorModel {
    
    static func encodeError() -> ErrorModel {
        return ErrorModel( message: " Encoding Error")
    }
    
    static func decodeError() -> ErrorModel {
        return ErrorModel(message: " Parse Error")
    }
}
