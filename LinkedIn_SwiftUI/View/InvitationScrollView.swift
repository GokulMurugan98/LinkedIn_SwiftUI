//
//  InvitationScrollView.swift
//  LinkedIn_SwiftUI
//
//  Created by Gokul Murugan on 2023-05-03.
//

import SwiftUI


let demoData:FriendsModel = FriendsModel(id: 0, name: "Gokul", position: "iOS Developer", mutual: 20, image: "01")

struct InvitationScrollView: View {
    let data:FriendsModel
    
    var body: some View {
        HStack(){
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 100,height: 85)
            
            VStack(alignment: .leading){
                Text(data.name)
                    .font(.body)
                Text(data.position)
                    .font(.subheadline)
                    .foregroundColor(.black.opacity(0.5))
                Text("⚭ \(data.mutual) mutual connections")
                    .font(.caption)
                    .lineLimit(1)
                    .foregroundColor(.black.opacity(0.5))
            }
            
            HStack(spacing: 20) {
                Image(systemName: "multiply.circle")
                    .font(.system(size: 35))
                .foregroundColor(.gray)
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.blue).opacity(0.8)
            }.padding(.horizontal)
            
            
        }
    }
}

struct InvitationScrollView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationScrollView(data: demoData)
    }
}
