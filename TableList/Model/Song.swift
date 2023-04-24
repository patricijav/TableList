//
//  Song.swift
//  TableList
//
//  Created by patricija.vainovska on 24/04/2023.
//

import Foundation

struct Song {
    let track: String
    let album: String
    let cover: String
    
    static func createSong() -> [Song] {
        var songs: [Song] = []
        
        let tracks = MusicDataManager.shared.track
        let albums = MusicDataManager.shared.album
        let covers = MusicDataManager.shared.cover
        
        for i in 0..<tracks.count {
            let song = Song(track: tracks[i], album: albums[i], cover: covers[i])
            songs.append(song)
        }
        
        return songs
    }
}

