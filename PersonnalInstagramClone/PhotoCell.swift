//
//  PhotoCell.swift
//  PersonnalInstagramClone
//
//  Created by Elliot Knight on 01/02/2022.
//

import SwiftUI

struct PhotoCell: View {
    let post: Post
    var body: some View {
        Image(post.photo)
            .resizable()
            .scaledToFit()
    }
}

struct PhotoCell_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCell(post: Post(profilePicture: "avatar1", userName: "ff", place: "london", photo: "photo8", likes: 98))
    }
}
