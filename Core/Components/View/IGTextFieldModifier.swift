//
//  IGTextFieldModifier.swift
//  InstagramTut
//
//  Created by Owen Warner on 6/24/23.
//

import SwiftUI

struct IGTextFieldModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
        
    }
}
