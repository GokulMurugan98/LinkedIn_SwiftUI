//
//  HomeScreenView.swift
//  LinkedIn_SwiftUI
//
//  Created by Gokul Murugan on 2023-05-03.
//

import SwiftUI

var postData: [PostsModel] = [
    .init(id: 0, image: "0", title: "iNeuron", followers: 4066, profileImage: "00"),
    .init(id: 1, image: "1", title: "Learnyst", followers: 2345, profileImage: "01"),
    .init(id: 2, image: "2", title: "Synopsys inc", followers: 1235, profileImage: "02"),
    .init(id: 3, image: "3", title: "Skill-Lync", followers: 908, profileImage: "03"),
    .init(id: 4, image: "4", title: "Intel", followers: 1234, profileImage: "04"),
    .init(id: 5, image: "5", title: "HP", followers: 567, profileImage: "05"),
    .init(id: 6, image: "6", title: "JungleWorks", followers: 346, profileImage: "00"),
    .init(id: 7, image: "7", title: "Design", followers: 26, profileImage: "01"),
    .init(id: 8, image: "8", title: "PC Studio", followers: 143, profileImage: "02"),
    .init(id: 9, image: "9", title: "Ideas", followers: 29, profileImage: "03"),
    .init(id: 10, image: "10", title: "Apple", followers: 06, profileImage: "04"),
    .init(id: 11, image: "11", title: "WindMill", followers: 1998, profileImage: "05"),
    .init(id: 12, image: "12", title: "AirPods", followers: 16, profileImage: "00"),
    .init(id: 13, image: "13", title: "Web Development", followers: 09, profileImage: "01"),
    .init(id: 14, image: "14", title: "Gadgets", followers: 1998, profileImage: "02"),
    .init(id: 15, image: "15", title: "Satelite", followers: 24, profileImage: "03"),
    .init(id: 16, image: "16", title: "Fireworks", followers: 300, profileImage: "04")
    ]

struct HomeScreenView: View {
    var body: some View {
        VStack{
            Spacer()
            SearchBarView()
            Divider()
            HStack{
                Image(systemName: "square.and.pencil")
                Text("Start a post")
                Spacer()
            }.padding(.horizontal)
            Divider()
            HStack{
                HStack{
                    Image(systemName: "photo")
                        .foregroundColor(.green)
                    Text("Photo")
                    Spacer()
                }
                HStack{
                    Image(systemName: "video.fill")
                        .foregroundColor(.blue)
                    Text("Video")
                    Spacer()
                }
                HStack{
                    Image(systemName: "calendar")
                        .foregroundColor(.orange)
                    Text("Event")
                }
                
            }.padding(.horizontal)
            ScrollView(.vertical){
                ForEach(postData, id: \.id) { data in
                    RoundedRectangle(cornerRadius: 2)
                        .frame(height: 6)
                        .foregroundColor(.gray.opacity(0.4))
                    PostsView(data: data)
                }
                
            }
            
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
