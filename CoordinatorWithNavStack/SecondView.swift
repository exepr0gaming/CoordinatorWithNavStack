//
//  SecondView.swift
//  CoordinatorWithNavStack
//
//  Created by Admin on 11.07.2023.
//

import SwiftUI

struct SecondView: View {
  @EnvironmentObject private var coordinator: Coordinator
    var body: some View {
      List {
        Button("Push third 🥕") {
          coordinator.push(.third)
        }
        Button("Pop") {
          coordinator.pop()
        }
      }
      .navigationTitle("SecondView 🍌")
    }
}
#if DEBUG
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
      SecondView()
    }
}
#endif
