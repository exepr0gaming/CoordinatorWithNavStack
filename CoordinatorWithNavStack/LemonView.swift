//
//  LemonView.swift
//  CoordinatorWithNavStack
//
//  Created by Admin on 11.07.2023.
//

import SwiftUI

struct LemonView: View {
  @EnvironmentObject private var coordinator: Coordinator
  
    var body: some View {
      List {
        Button("Dismiss") {
          coordinator.dismissSheet()
        }
      }
      .navigationTitle("🍋")
    }
}
#if DEBUG
struct LemonView_Previews: PreviewProvider {
    static var previews: some View {
        LemonView()
    }
}
#endif
