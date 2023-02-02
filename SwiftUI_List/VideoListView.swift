//
//  VideoListView.swift
//  SwiftUI_List
//
//  Created by 권정근 on 2023/01/31.
//

import SwiftUI

struct VideoListView: View {
    
    // 동적인 데이터 전달을 위해 vidoes 변수 선언, Video.swift 내 데이터 갖고 오기
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        NavigationView {
            // id: \.id 로 각 배열 내 데이터의 고유 id 로 인자를 받음
            List(videos, id:\.id) { video in
                // VideoListView 와 VideoDetailView 연결
                NavigationLink(destination: VideoDetailView(video: video), label: {
                    VideoCell(video: video)
                })
                
                .navigationTitle("Sean`s Top 10")
            }
        }
    }
}

// VideoCell 을 별도 struct 로 빼냄으로써 label 부분의 코드를 줄여 가독성을 높음
struct VideoCell: View {
    
    var video: Video
    
    var body: some View {
        HStack {
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .cornerRadius(4)
                .padding(.vertical, 5)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)              // 텍스트 줄 수 고정
                    .minimumScaleFactor(0.5)   // 텍스트 크기 조절
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}


struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
