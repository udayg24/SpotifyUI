//
//  SpotifyCatergoryCell.swift
//  SpotifyClone
//
//  Created by Uday Gajera on 16/06/24.
//

import SwiftUI

struct SpotifyCatergoryCell: View {
    
    var title: String = "All"
    var isSelected: Bool = false
    
    var body: some View {
        Text(title)
            .font(.callout)
            .frame(minWidth: 35)
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
            .themeColors(isSelected: isSelected)
            .cornerRadius(16)
    }
}

extension View {
    func themeColors(isSelected: Bool) -> some View {
        self
            .background(isSelected ? .spotfiyGreen : .spotfiyGray)
            .foregroundStyle(isSelected ? .spotfiyBlack : .spotfiyWhite)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        SpotifyCatergoryCell(title: "Title goes here")
    }
}
