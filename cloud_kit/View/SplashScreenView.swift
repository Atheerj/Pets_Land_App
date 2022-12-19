//
//  SplashScreen.swift
//  cloud_kit
//
//  Created by Aldanah Alqbbani on 24/05/1444 AH.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            Home()
        }
        else {
            ZStack {
                Image("splash")
                    .resizable()
                    .frame(width:500, height: 500)
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.3)) {
                            self.size = 0.5
                            self.opacity = 1.00
                        }
                    }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
