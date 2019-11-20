//
//  RecipeCardStackView.swift
//  recipebox-ios
//
//  Created by Zee Spencer on 11/19/19.
//  Copyright © 2019 Zinc Collective LLC. All rights reserved.
//

import SwiftUI

struct RecipeCardStackView: View {
    let recipeStack: RecipeListViewModel
    @State private var swipe = CGSize.zero
    
    init(recipes: RecipeListViewModel ) {
        self.recipeStack = recipes
    }
    
    var body: some View {
        ZStack {
            ForEach(self.recipeStack.recipes, id:\.id) { recipe in
                RecipeCardView(recipe: recipe)
            }
            RecipeCardView(recipe: self.recipeStack.first)
                            .animation(.default)
                            .offset(x: self.swipe.width, y: self.swipe.height)
                            .gesture(DragGesture()
                                .onChanged { value in
                                    self.swipe = value.translation
                                    
                            }
                            .onEnded { _ in
                                if(self.swipe.width < -10) {
                                    self.recipeStack.reject()
                                }
                                self.swipe = CGSize.zero
                            })
        }
    }
}

struct RecipeCardStackView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardStackView(recipes: RecipeListViewModel())
    }
}
