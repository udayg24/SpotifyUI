//
//  SpotifyRecentsCEll.swift
//  SpotifyClone
//
//  Created by Uday Gajera on 17/06/24.
//

import SwiftUI

struct SpotifyRecentsCell: View {
    
    var imageName: String = Constants.randomUrl
    var title: String = "Some random title"
    
    var body: some View {
        HStack(spacing: 16) {
            ImageLoderView(url: imageName)
                .frame(width: 55, height: 55)
            
            Text(title)
                .font(.callout)
                .fontWeight(.semibold)
                .lineLimit(2)
        }
        .foregroundStyle(.spotfiyWhite)
        .padding(.trailing, 8)
        .frame(maxWidth: .infinity, alignment: .leading)
        .themeColors(isSelected: false)
        .cornerRadius(6)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        VStack {
            HStack {
                SpotifyRecentsCell()
                SpotifyRecentsCell()
            }
        }
    }
}
