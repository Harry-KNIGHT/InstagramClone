//
//  ProfilePictureInPostCell.swift
//  PersonnalInstagramClone
//
//  Created by Elliot Knight on 01/02/2022.
//

import SwiftUI

struct ProfilePictureInPostCell: View {
    let post: Post
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.red, lineWidth: 1.5)
                .frame(width: 50, height: 50)
            Image(post.profilePicture)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 45, height: 45)
        }
        
    }
}


struct ProfilePictureInPostCell_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePictureInPostCell(post: Post(profilePicture: "avatar1", userName: "e", place: "", photo: "photo1", likes: 0))
    }
}
