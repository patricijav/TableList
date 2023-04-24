//
//  Movie.swift
//  TableList
//
//  Created by patricija.vainovska on 24/04/2023.
//

import Foundation

struct Movie {
    let title: String
    let year: String
    let director: String
    let rating: String
    let cover: String
    
    static func createMovie() -> [Movie] {
        var movies: [Movie] = []
        
        let titles = MoviesDataManager.shared.titles
        let years = MoviesDataManager.shared.years
        let directors = MoviesDataManager.shared.directors
        let ratings = MoviesDataManager.shared.ratings
        let covers = MoviesDataManager.shared.covers
        
        for i in 0..<titles.count {
            let movie = Movie(
                title: titles[i],
                year: years[i],
                director: directors[i],
                rating: ratings[i],
                cover: covers[i]
            )
            movies.append(movie)
        }
        
        return movies
    }
}
