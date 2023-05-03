//
//  PostsView.swift
//  LinkedIn_SwiftUI
//
//  Created by Gokul Murugan on 2023-05-03.
//

import SwiftUI




let demoPostData = PostsModel(id: 01, image: "1", title: "Gokul Murugan", followers: 200, profileImage: "00")

struct PostsView: View {
    let data:PostsModel
    
    let interactions = ["Like": "hand.thumbsup",
                        "Comment": "ellipsis.message",
                        "Share": "arrow.turn.up.right",
                        "Send": "square.and.arrow.up"
    ]
    
    var body: some View {
        VStack{
            
            HStack{
                Image(data.profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 100,height: 100)
                
                VStack(alignment: .leading,spacing: 2){
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("8m")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                Image(systemName: "arrowshape.turn.up.right")
                    .font(.system(size: 20))
                    .foregroundColor(.black.opacity(0.6))
                    .padding(.trailing)
                
            }
            Text("Looking for iOS developer with 10 years of foreign experience. This is an Entry level job.")
                .padding(.horizontal,6)
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            Divider()
            HStack(alignment: .center){
                Spacer()
                VStack(spacing: 5){
                    Image(systemName: interactions["Like"]!)
                    Text("Like")
                        .font(.subheadline)
                }
                Spacer()
                VStack(spacing: 5){
                    Image(systemName: interactions["Comment"]!)
                    Text("Comment")
                        .font(.subheadline)
                }
                Spacer()
                VStack(spacing: 5){
                    Image(systemName: interactions["Share"]!)
                    Text("Share")
                        .font(.subheadline)
                }
                Spacer()
                VStack(spacing: 5){
                    Image(systemName: interactions["Send"]!)
                    Text("Send")
                        .font(.subheadline)
                }
                Spacer()
                
            }.padding(.all, 2)
            
            
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView(data: demoPostData)
    }
}
