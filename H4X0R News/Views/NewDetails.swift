//
//  DetailView.swift
//  H4X0R News
//
//  Created by Jonathan Torres on 04/04/22.
//

import SwiftUI

extension View {
    func toAnyView() -> AnyView {
       AnyView(self)
    }
}

struct NewDetails: View {
    @State private var showLoading: Bool = false
    let url: String?
    
    var body: some View {
        WebView(urlString: url, showLoading: $showLoading)
            .overlay(showLoading ? ProgressView("Loading...").toAnyView() : EmptyView().toAnyView())
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewDetails(url: "https://torresr.com")
    }
}
