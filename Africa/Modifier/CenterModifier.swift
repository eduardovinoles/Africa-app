//
//  CenterModifier.swift
//  Africa
//
//  Created by eduardo vinoles on 8/1/24.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
