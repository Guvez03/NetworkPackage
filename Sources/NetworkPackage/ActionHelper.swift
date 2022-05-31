//
//  ActionHelper.swift
//  MovieDBProject
//
//  Created by Ahmet Güvez on 14.05.2022.
//

import Foundation

public struct Constant {
    public static let baseEndpointUrl = "https://api.themoviedb.org/3/movie/"
    public static let publicKey = "185a5a8748fda52819e096340a6bb1fd"
}

public enum ActionHelper {
    case nowPlaying
    case upcoming
    case movieDetail(Int?)
}

public extension ActionHelper {
    var path: String {
        switch self {
        case .nowPlaying:
            return "now_playing"
        case .upcoming:
            return "upcoming"
        case .movieDetail(let id):
            return "\(id ?? 0)"
        }
    }
}

enum Language{
    case en
    case tr
    case es
}

extension Language {
    var language: String {
        switch self {
        case .en:
            return "en-US"
        case .tr:
            return "tr"
        case .es:
            return "es"
        }
    }
}
