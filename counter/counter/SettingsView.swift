//
//  SettingsView.swift
//  counter
//
//  Created by Natalie Ammerman on 9/24/24.
//

import SwiftUI

struct SettingsView: View {
    @Binding var maxCount: Int
    
    var body: some View {
        ZStack() {
            VStack() {
                HStack() {
                    Stepper("Max Count: \(maxCount)", value: $maxCount).padding().background(Color.white, in: .rect(cornerRadius: 10)).padding()
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var maxCount = 5
    SettingsView(maxCount: $maxCount)
}
