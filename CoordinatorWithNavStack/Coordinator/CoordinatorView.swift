//
//  CoordinatorView.swift
//  CoordinatorWithNavStack
//
//  Created by Admin on 11.07.2023.
//

import SwiftUI

struct CoordinatorView: View {
  @StateObject private var coordinator = Coordinator()
  
    var body: some View {
      NavigationStack(path: $coordinator.path) {
        coordinator.build(page: .first)
          .navigationDestination(for: Page.self) { page in
            coordinator.build(page: page)
          }
          .sheet(item: $coordinator.sheet) { sheet in
            coordinator.build(sheet: sheet)
          }
          .fullScreenCover(item: $coordinator.fullScreenCover) { fullScreenCover in
            coordinator.build(fullScreenCover: fullScreenCover)
          }
      }
      .environmentObject(coordinator)
    }
}

#if DEBUG
struct CoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        CoordinatorView()
    }
}
#endif
