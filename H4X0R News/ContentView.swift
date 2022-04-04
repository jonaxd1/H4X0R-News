//
//  ContentView.swift
//  H4X0R News
//
//  Created by Jonathan Torres on 01/04/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NewList(posts: networkManager.posts)
            .onAppear{
                self.networkManager.fetchData()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
