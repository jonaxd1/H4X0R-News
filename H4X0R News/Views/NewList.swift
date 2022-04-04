//
//  NewsList.swift
//  H4X0R News
//
//  Created by Jonathan Torres on 04/04/22.
//

import SwiftUI

struct NewList: View {
    let posts: [Post]
    
    var body: some View {
        NavigationView {
            List(posts) { post in
                NavigationLink {
                    NewDetails(url: post.url)
                } label: {
                    NewRow(post: post)
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
    }
}

struct NewsList_Previews: PreviewProvider {
    static var posts = [
        Post(title: "Test", url: nil, objectID: "123", points: 123),
        Post(title: "Test", url: nil, objectID: "123", points: 123)
    ]
    static var previews: some View {
        NewList(posts: posts)
    }
}
