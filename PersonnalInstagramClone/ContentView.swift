//
//  ContentView.swift
//  PersonnalInstagramClone
//
//  Created by Elliot Knight on 01/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(posts) { post in
                            VStack {
                                ProfilePictureCell(post: post, width: 75)
                                    .padding(.top)
                                    .padding(.horizontal,6)
                                Text(post.userName.lowercased())
                            }
                        }
                        
                    }.padding(.leading, 10)
                }
                Divider()
                ForEach(posts) { post in
                    VStack {
                        HStack {
                            ProfilePictureCell(post: post, width: 50)
                            VStack(alignment: .leading) {
                                Text(post.userName)
                                    .bold()
                                Text(post.place)
                                    .font(.subheadline)
                            }
                            Spacer()
                            Image(systemName: "ellipsis")
                        }.padding(.horizontal, 10)
                        PhotoCell(post: post)
                        HStack {
                            Image(systemName: "heart")
                                .sfSymboleStyle()
                            Image(systemName: "message")
                                .sfSymboleStyle()
                            Image(systemName: "paperplane")
                                .sfSymboleStyle()
                            Spacer()
                            Image(systemName: "bookmark")
                                .sfSymboleStyle()
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 6)
                    }
                }
                
            }
        }
        Spacer()
        //        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ImageUnderPhotoModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 25))
            .padding(.horizontal, 10)
    }
}

extension View {
    func sfSymboleStyle() -> some View {
        modifier(ImageUnderPhotoModifier())
    }
}
