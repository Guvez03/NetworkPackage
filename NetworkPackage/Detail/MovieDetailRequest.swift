//
//  MovieDetailRequest.swift
//  MovieDBProject
//
//  Created by Ahmet Güvez on 14.05.2022.
//

import Foundation

public struct MovieDetailRequest: Codable {
    public let id: Int
    
    public init(id: Int){
        self.id = id
    }
}
