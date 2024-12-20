//
//  VideoListItem.swift
//  Africa
//
//  Created by Igor Shulumba on 28.10.2024.
//

import SwiftUI

let videos: [Video] = Bundle.main.decode("videos.json")

struct VideoListItemView: View {
    // MARK: PROPERTIES
    
    let video: Video
    
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    VideoListItemView(video: videos[0])
        .padding()
}
