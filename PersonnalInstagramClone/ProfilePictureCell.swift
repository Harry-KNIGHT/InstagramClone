//
//  StoryCell.swift
//  PersonnalInstagramClone
//
//  Created by Elliot Knight on 01/02/2022.
//

import SwiftUI

struct ProfilePictureCell: View {
    let post: Post
    var width: CGFloat = 80
    var body: some View {
        HStack {
            Image(post.profilePicture)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: width)
                .overlay(
                    Circle().stroke(Color.red, style: StrokeStyle(lineWidth: 2))
                        .frame(width: width + 5, height: width + 5)
                )
        }
    }
}

struct ProfilePictureCell_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePictureCell(post: Post(profilePicture: "avatar4", userName: "Hudson", place: "Strasbourg", photo: "photo1", likes: 0))
    }
}
