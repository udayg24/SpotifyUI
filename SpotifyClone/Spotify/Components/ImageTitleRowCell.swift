//
//  ImageTitleRowCell.swift
//  SpotifyClone
//
//  Created by Uday Gajera on 17/06/24.
//

import SwiftUI

struct ImageTitleRowCell: View {
    var imageSize: CGFloat = 100
    var imageName: String = Constants.randomUrl
    var title: String = "Some Item Name"
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ImageLoderView(url: imageName)
                .frame(width: imageSize, height: imageSize)
            
            Text(title)
                .font(.callout)
                .foregroundStyle(.spotfiyLightGray)
                .lineLimit(2)
                .padding(4)
        }
        .frame(width: imageSize)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        ImageTitleRowCell()
    }

}
