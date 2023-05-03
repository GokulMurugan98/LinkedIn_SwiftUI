//
//  SearchBarView.swift
//  LinkedIn_SwiftUI
//
//  Created by Gokul Murugan on 2023-05-03.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack{
            Image("demo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 50,height: 50,alignment: .center)
            
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.gray.opacity(0.3))
                .frame(height: 30)
                .overlay(
                    HStack(spacing: 20){
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .foregroundColor(.gray)
                        Spacer()
                    }.padding(.horizontal)
                )
            
            Image(systemName: "ellipsis.bubble.fill")
                .resizable()
                .foregroundColor(.black.opacity(0.4))
                .aspectRatio(contentMode: .fit)
                .frame(width: 25,height: 25)
            
        }
        .padding(.horizontal, 5)
        .edgesIgnoringSafeArea(.all)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
