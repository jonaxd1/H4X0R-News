//
//  NewRow.swift
//  H4X0R News
//
//  Created by Jonathan Torres on 04/04/22.
//

import SwiftUI

struct NewRow: View {
    let post: Post
    var body: some View {
        HStack {
            Text("\(post.points)")
            Text(post.title)
        }
    }
}

struct NewRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NewRow(post: Post(title: "Test", url: nil, objectID: "123", points: 123))
            NewRow(post: Post(title: "Test", url: nil, objectID: "123", points: 123))
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
