//
//  MovieDetail.swift
//  MovieDBProject
//
//  Created by Ahmet Güvez on 14.05.2022.
//

import Foundation

// MARK: - Upcoming
public struct MovieDetail: Codable {
    public let backdropPath: String?
    public let id: Int?
    public let title: String?
    public let imdbID, originalTitle, overview: String?
    public let popularity: Double?
    public let posterPath: String?
    public let releaseDate: String?
    public let voteCount: Int?
    public let voteAverage: Double?
    
    enum CodingKeys: String, CodingKey {
        case backdropPath = "backdrop_path"
        case id
        case title
        case imdbID = "imdb_id"
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
