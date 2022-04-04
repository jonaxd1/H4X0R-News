//
//  News.swift
//  H4X0R News
//
//  Created by Jonathan Torres on 04/04/22.
//

import Foundation

// MARK: - Results
struct Results: Decodable {
    let hits: [Post]
}

// MARK: - Post
struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let url: String?
    let objectID: String
    let points: Int

}
