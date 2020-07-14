//
//  InfoView.swift
//  RamziCard
//
//  Created by Ramzi chamcham on 2020-03-01.
//  Copyright © 2020 Ramzi Chamcham. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color(.white))
            .frame(height: 40)
            .overlay(
                HStack{
                    Image(systemName: imageName)
                        .foregroundColor(.gray)
                    Text(text).foregroundColor(Color("InfoColor"))
            })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(imageName: "phone.fill", text: "12345")
            .previewLayout(.sizeThatFits)
    }
}
