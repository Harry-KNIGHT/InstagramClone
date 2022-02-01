//
//  PostModel.swift
//  PersonnalInstagramClone
//
//  Created by Elliot Knight on 01/02/2022.
//

import Foundation


struct Post: Identifiable {
    let id = UUID()
    let profilePicture: String
    let userName: String
    let place: String
    let photo: String
    let likes: Int
}
