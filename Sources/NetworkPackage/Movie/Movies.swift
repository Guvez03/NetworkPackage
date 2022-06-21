//
//  NowPlaying.swift
//  MovieDBProject
//
//  Created by Ahmet Güvez on 13.05.2022.
//

import Foundation

public struct Movies: Codable {
    public let page: Int?
    public let results: [Movie]?
    public let totalPages: Int?

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
    }
}

public struct Movie: Codable {
    public let backdropPath: String?
    public let id: Int?
    public let originalTitle, overview: String?
    public let popularity: Double?
    public let posterPath, releaseDate, title: String?
    public let voteAverage: Double?
    public let voteCount: Int?

    enum CodingKeys: String, CodingKey {
        case backdropPath = "backdrop_path"
        case id
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
