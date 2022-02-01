//
//  StoryCell.swift
//  PersonnalInstagramClone
//
//  Created by Elliot Knight on 01/02/2022.
//

import SwiftUI

struct ProfilePictureCell: View {
    let post: Post
    var body: some View {
        HStack {
            Image(post.profilePicture)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 80, height: 80)
        }
    }
}

struct ProfilePictureCell_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePictureCell(post: Post(profilePicture: "avatar4", userName: "Hudson", place: "Strasbourg", photo: "photo1", likes: 0))
    }
}
