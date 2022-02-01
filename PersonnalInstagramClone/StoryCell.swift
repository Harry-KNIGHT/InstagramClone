//
//  StoryCell.swift
//  PersonnalInstagramClone
//
//  Created by Elliot Knight on 01/02/2022.
//

import SwiftUI

struct StoryCell: View {
    let post: Post
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.red, lineWidth: 2.3)
                .frame(width: 85, height: 85)
            ProfilePictureCell(post: post)
        }
    }
}

struct StoryCell_Previews: PreviewProvider {
    static var previews: some View {
        StoryCell(post: Post(profilePicture: "avatar1", userName: "rrr", place: "london", photo: "photo0", likes: 0))
    }
}
