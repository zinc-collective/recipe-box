//
//  RecipeCardView.swift
//  recipebox-ios
//
//  Created by Zee Spencer on 11/19/19.
//  Copyright © 2019 Zinc Collective LLC. All rights reserved.
//

import SwiftUI
import Foundation

struct RecipeCardView: View {
    let recipe: RecipeViewModel
    
    init(recipe: RecipeViewModel) {
        self.recipe = recipe
    }
    var body: some View {
        ZStack {
            Color.primary.colorInvert().edgesIgnoringSafeArea(.all)
            VStack {
                CircleImage(image: recipe.imageURL)
                    .frame(width: 200, height: 200)
                    .scaledToFit()
                VStack(alignment: .leading) {
                    Text(recipe.name)
                        .font(.title)
                    Text(recipe.summary)
                    Text(recipe.source)
                    .lineLimit(nil)
                }
                    .padding()
                Spacer()
            }
        }
        
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: RecipeViewModel(recipe: Recipe(
            name: "Spicy Bacon Eggs Benedict",
            imageURL: "spicy-eggs-benedict",
            source: "https://www.thespruceeats.com/spicy-bacon-eggs-benedict-4034945",
            summary: "Eggs Benedict...with bacon can't get much better.")))
    }
}
