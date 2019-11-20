//
//  ContentView.swift
//  recipebox-ios
//
//  Created by Zee Spencer on 10/29/19.
//  Copyright © 2019 Zinc Collective LLC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var recipeListVM =
        RecipeListViewModel()
    var body: some View {
        RecipeCardStackView(recipes: recipeListVM)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
