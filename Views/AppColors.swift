//
//  AppColors.swift
//  HappyThoughts
//
//  Created by Gustavo Vazquez on 4/7/24.
//

import SwiftUI

struct AppColors {
    static let mainBackgroundColor = LinearGradient(gradient: Gradient(colors: [
        Color(red: 6/255,
              green: 1/255,
              blue: 35/255),
        Color(red: 107/255,
              green: 162/255,
              blue: 255/255),
        Color(red: 255/255,
              green: 249/255,
              blue: 242/255)]),
        startPoint: .top,
        endPoint: .bottom)
    
    static let mainButtonColor = Color(red: 232/255,
                                       green: 145/255,
                                       blue: 88/255)
}

struct AppColorsPreview: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(AppColors.mainBackgroundColor)
                .frame(height: 200)
            Text("Main Background Color")
                .bold()
                .padding()
            Rectangle()
                .fill(AppColors.mainButtonColor)
                .frame(width: 350,
                       height: 100)
                .cornerRadius(80)
            Text("Main Button Color")
                .bold()
                .padding()
        }
    }
}

struct AppColorsPreview_Preview: PreviewProvider {
    static var previews: some View {
        AppColorsPreview()
    }
}


