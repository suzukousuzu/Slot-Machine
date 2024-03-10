//
//  Extensions.swift
//  Slot Machine
//
//  Created by 鈴木航太 on 2024/03/10.
//

import SwiftUI

extension Text {
    func scoreLabeleTyle() -> Text {
        self
            .foregroundColor(.white)
            .font(.system(size: 10, weight: .bold, design: .rounded))
    }
    
    func scoreNumberStyle() -> Text {
        self
            .foregroundColor(.white)
            .font(.system(.title, design: .rounded))
            .fontWeight(.heavy)
    }
}
