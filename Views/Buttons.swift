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
                    .foregroundStyle(.black)
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: 250)
                    .background(AppColors.mainButtonColor)
                    .cornerRadius(9)
                    .opacity(0.9)
                    .shadow(radius: 10, 
                            x: 0,
                            y: 10)
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
