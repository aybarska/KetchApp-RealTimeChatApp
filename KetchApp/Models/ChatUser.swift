//
//  ChatUser.swift
//
//  Created by Ayberk M on 21.09.2022.
//

import Foundation

struct ChatUser {
    let firstName:String
    let lastName:String
    let email:String
    let id = UUID()
    var profilePictureFileName : String {
        return "\(safeEmail)_profile_picture.png"
    }
    var safeEmail: String {
        var email = email.replacingOccurrences(of: ".", with: "-")
        email = email.replacingOccurrences(of: "@", with: "-")
        return email
    }
}
