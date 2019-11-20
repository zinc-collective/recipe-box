//
//  GormonjeeScoreView.swift
//  recipebox-ios
//
//  Created by Zee Spencer on 11/5/19.
//  Copyright © 2019 Zinc Collective LLC. All rights reserved.
//

import SwiftUI

struct GormonjeeScoreView: View {
    var body: some View {
        Image("gormonjee-score")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}

struct GormonjeeScoreView_Previews: PreviewProvider {
    static var previews: some View {
        GormonjeeScoreView()
    }
}
