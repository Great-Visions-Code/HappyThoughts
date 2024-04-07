//
//  SwiftUIView.swift
//  HappyThoughts
//
//  Created by Gustavo Vazquez on 4/7/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            AppColors.mainBackgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Rectangle()
                    .frame(width: 375,height: 350)
                    .opacity(0.2)
                Text("HappyThoughts")
                    .font(.largeTitle)
                Text("''Gratefulness Quote Holder''")
                    .padding()
                Spacer() //Moves buttons to bottom of the screen
                Buttons.GeneralButtons(text: "Login", 
                                       action: {
                    //TODO: Link to HomeView()
                })
                Buttons.GeneralButtons(text: "Sign Up", 
                                       action: {
                    //TODO: Link to SignUpView()
                })
            }
        }
    }
}

struct WelcomeViewPreview_Preview: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
