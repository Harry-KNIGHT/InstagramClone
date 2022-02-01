//
//  ContentView.swift
//  PersonnalInstagramClone
//
//  Created by Elliot Knight on 01/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        // STORIES
                        ForEach(posts) { post in
                            StoryCell(post: post)
                                .padding(.vertical)
                                .padding(.horizontal,6)
                        }
                    }
                    Spacer()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: Text("Instagram")
                                    .font(.largeTitle)
                                    .bold()
                                ,trailing: HStack {
                Image(systemName: "plus.app")
                Image(systemName: "heart")
                Image(systemName: "paperplane")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
