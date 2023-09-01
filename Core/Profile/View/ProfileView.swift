//
//  ProfileView.swift
//  InstagramTut
//
//  Created by Owen Warner on 6/4/23.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var body: some View {
            ScrollView{
                // header
                ProfileHeaderView(user: user)
                
                // post grid view
                
                PostGridView(user: user)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[0])
    }
}
