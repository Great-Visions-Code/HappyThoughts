//
//  AnimatedBackground.swift
//  HappyThoughts
//
//  Created by Gustavo Vazquez on 4/11/24.
//

import SwiftUI

struct AnimatedBackground: View {
    @State private var isAtBottom = true
    
    // Set to publish every 4 secs
    let timer = Timer.publish(every: 4, 
                              on: .main,
                              in: .common)
                        .autoconnect()
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [
                Color(.black),
                Color("GradientTopColor"),
                Color("GradientMiddleColor"),
                Color("GradientBottomColor")]),
            startPoint: .top,
            // Moved endPoint lower off screen for a more appeasing look
            endPoint: isAtBottom ? UnitPoint(x: 0.5, y: 1.2) : .center
        )
        // Duration set to 8 secs. 4 in and 4 out.
        .animation(Animation.easeInOut(duration: 8)
            .repeatForever(autoreverses: true),
                value: isAtBottom)
            .onReceive(timer, perform: { _ in
                isAtBottom.toggle()
        })
        .ignoresSafeArea()
    }
}

struct AnimatedBackground_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedBackground()
    }
}
