//
//  AppleView.swift
//  CoordinatorWithNavStack
//
//  Created by Admin on 11.07.2023.
//

import SwiftUI

struct AppleView: View {
  
  @EnvironmentObject private var coordinator: Coordinator
  
    var body: some View {
      List {
        Button("Push 🍌") {
          coordinator.push(.banana)
        }
        Button("Present 🥕") {
          coordinator.present(sheet: .lemon)
        }
        Button("Present 🍋") {
          coordinator.present(fullScreenCover: .olive)
        }
      }
      .navigationTitle("🍎")
    }
}
#if DEBUG
struct AppleView_Previews: PreviewProvider {
    static var previews: some View {
        AppleView()
    }
}
#endif
