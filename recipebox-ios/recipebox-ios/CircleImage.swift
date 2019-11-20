//
//  CircleImage.swift
//  recipebox-ios
//
//  Created by Zee Spencer on 11/5/19.
//  Copyright © 2019 Zinc Collective LLC. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    let image: String
    init(image: String) {
        self.image = image
    }
    var body: some View {
        Image(self.image)
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth:4))
            .shadow(radius: 10)
            
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: "spicy-eggs-benedict")
    }
}
