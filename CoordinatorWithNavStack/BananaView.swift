//
//  BananaView.swift
//  CoordinatorWithNavStack
//
//  Created by Admin on 11.07.2023.
//

import SwiftUI

struct BananaView: View {
  @EnvironmentObject private var coordinator: Coordinator
    var body: some View {
      List {
        Button("Push 🥕") {
          coordinator.push(.carrot)
        }
        Button("Pop") {
          coordinator.pop()
        }
      }
      .navigationTitle("🍌")
    }
}
#if DEBUG
struct BananaView_Previews: PreviewProvider {
    static var previews: some View {
      BananaView()
    }
}
#endif
