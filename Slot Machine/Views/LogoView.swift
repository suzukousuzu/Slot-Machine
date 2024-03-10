//
//  LogoView.swift
//  Slot Machine
//
//  Created by 鈴木航太 on 2024/03/10.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Image("gfx-slot-machine")
            .resizable()
            .scaledToFit()
            .frame(minWidth: 256, idealWidth: 300, maxWidth: 320, minHeight: 112, idealHeight: 130, maxHeight: 140, alignment: .center)
            .padding(.horizontal)
            .layoutPriority(1)
            .modifier(ShadowModier())
           
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
