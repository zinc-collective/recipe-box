//
//  Recipe.swift
//  recipebox-ios
//
//  Created by Zee Spencer on 11/19/19.
//  Copyright © 2019 Zinc Collective LLC. All rights reserved.
//

import Foundation

struct Recipe {
    let name: String
    let imageURL: String
    let source: String
    let summary: String
}


extension Recipe {
    static func all() -> [Recipe] {
        return [
            Recipe(name: "Traditional Scottish Porridge",
                   imageURL: "scottish-porridge",
                   source: "https://www.thespruceeats.com/traditional-scottish-porridge-recipe-435821",
                   summary: "Discover the healthy and nutritious breakfast dish of Scottish porridge. This recipe calls for rolled oats which is one of the healthiest ways to start the day because this slowly released carbohydrate will keep you feeling satisfied from breakfast through to lunchtime. That makes Scottish porridge a real super food."),
            Recipe(name: "Spicy Bacon Eggs Benedict",
                   imageURL: "spicy-eggs-benedict",
                   source: "https://www.thespruceeats.com/spicy-bacon-eggs-benedict-4034945",
                   summary: "Eggs Benedict...with bacon can't get much better.")
            
        ]
    
    }
}


class RecipeListViewModel: ObservableObject {
    
    @Published var recipes = [RecipeViewModel]()
    
    init() {
        suggestRecipes()
    }
    
    var first: RecipeViewModel {
        return self.recipes.first!
    }
    
    func suggestRecipes() {
        self.recipes = Recipe.all().map(RecipeViewModel.init)
    }
    
    func reject() {
        self.recipes.removeFirst()
    }
}
class RecipeViewModel {
    var recipe: Recipe
    let id = UUID()
    
    init(recipe: Recipe) {
        self.recipe = recipe
    }
    
    var name: String {
        return self.recipe.name
    }
    
    var source: String {
        return self.recipe.source
    }
    var summary: String {
        return self.recipe.summary
    }
    
    var imageURL: String {
        return self.recipe.imageURL
    }
}
