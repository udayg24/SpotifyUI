//
//  ImageLoderView.swift
//  SpotifyClone
//
//  Created by Uday Gajera on 14/06/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoderView: View {
    
    var url: String = Constants.randomUrl
    var resizingMode: ContentMode = .fill
    
    var body: some View {
        Rectangle()
            .opacity(0.001)
            .overlay(
                WebImage(url: URL(string: url))
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: resizingMode)
                    .allowsHitTesting(false)
            )
            .clipped()
    }
}

#Preview {
    ImageLoderView()
}
