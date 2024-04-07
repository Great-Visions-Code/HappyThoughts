//
//  Buttons.swift
//  HappyThoughts
//
//  Created by Gustavo Vazquez on 4/7/24.
//

import SwiftUI

struct Buttons {
    struct GeneralButtons: View {
        let text: String
        let action: () -> Void
        
        var body: some View {
            Button(action: action) {
                Text(text)
                    .fontWeight(.bold)
                    .frame(maxWidth: 200)
                    .padding()
                    .foregroundStyle(.black)
                    .background(AppColors.mainButtonColor)
                    .opacity(0.9)
                    .cornerRadius(40)
            }
        }
    }
}

struct ButtonsPreview_Preview: PreviewProvider {
    static var previews: some View {
        VStack {
            Buttons.GeneralButtons(text: "Login", action: {})
        }
    }
}
