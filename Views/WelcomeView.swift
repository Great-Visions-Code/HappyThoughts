//
//  WelcomeView.swift
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
            
            VStack(alignment: .center) {
                Image("WelcomeViewImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .shadow(color: .blue.opacity(0.6),
                            radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .clipped(antialiased: true)
                    .padding(EdgeInsets(top: 0, 
                                        leading: 0,
                                        bottom: 15,
                                        trailing: 0))
                Text("HappyThoughts")
                    .font(.system(.title,
                                  design: .serif))
                    .bold()
                    .padding()
                Text("''Gratefulness Quote Holder''")
                    .font(.system(.headline, 
                                  design: .serif))
                    .padding()
                Buttons.GeneralButtons(text: "Login",
                                       action: {
                    // TODO: Link to HomeView()
                })
                Buttons.GeneralButtons(text: "Sign Up",
                                       action: {
                    // TODO: Link to SignUpView()
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
