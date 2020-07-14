//
//  ContentView.swift
//  RamziCard
//
//  Created by Ramzi chamcham on 2020-03-01.
//  Copyright © 2020 Ramzi Chamcham. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red:0.09, green:0.63, blue:0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Ramzi").resizable().aspectRatio(contentMode: .fit).frame(width: 175, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                )
                Text("Ramzi Chamcham")
                    .font(Font.custom("pacifico", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                InfoView(imageName: "phone.fill", text: "+1 (438) 725-7722")
                InfoView(imageName: "envelope.fill", text: "ramzichamcham@gmail.com")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

