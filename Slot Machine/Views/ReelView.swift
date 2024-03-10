//
//  RealView.swift
//  Slot Machine
//
//  Created by 鈴木航太 on 2024/03/10.
//

import SwiftUI

struct ReelView: View {
    var body: some View {
        Image("gfx-reel")
            .resizable()
            .modifier(ImageModifier())
    }
}

struct RealView_Previews: PreviewProvider {
    static var previews: some View {
        ReelView()
            .previewLayout(.fixed(width: 220, height: 220))
        
    }
}
