//
//  CounterView.swift
//  counter
//
//  Created by Natalie Ammerman on 9/24/24.
//

import SwiftUI

struct CounterView: View {
    @State private var people: Int = 0
    @State private var maxCount: Int = 10
    var percentFull: Double {
        return Double(people) / Double(maxCount)
    }
    
    var body: some View {
        NavigationStack() {
            ZStack() {
                Color.blue.ignoresSafeArea()
                Color.red.ignoresSafeArea().opacity(percentFull)
                VStack() {
                    HStack() {
                        Text("\(people) People").font(.system(size: 60)).foregroundStyle(.white)
                        Spacer()
                        NavigationLink {
                            SettingsView(maxCount: $maxCount)
                        } label: {
                            Image(systemName: "gear").font(.system(size: 60)).foregroundStyle(.white)
                        }
                    }
                    .padding(.horizontal, 8)
                    Spacer()
                    HStack() {
                        Button(action: {
                            if people > 0 {
                                people -= 1
                            }
                        }) {
                            Image(systemName: "minus").font(.system(size: 60)).foregroundStyle(.white)
                        }
                        Spacer()
                        Button(action: {
                            if people != maxCount {
                                people += 1
                            }
                        }) {
                            Image(systemName: "plus").font(.system(size: 60)).foregroundStyle(.white)
                        }
                    }
                    .padding(.horizontal, 70)
                }
            }
        }
    }
}

#Preview {
    CounterView()
}
