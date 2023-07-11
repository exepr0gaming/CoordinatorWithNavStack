//
//  OliveView.swift
//  CoordinatorWithNavStack
//
//  Created by Admin on 11.07.2023.
//

import SwiftUI

struct OliveView: View {
  @EnvironmentObject private var coordinator: Coordinator
  
    var body: some View {
      List {
        Button("Dismiss") {
          coordinator.dismissFullScreenCover()
        }
      }
      .navigationTitle("🫒")
    }
}
#if DEBUG
struct OliveView_Previews: PreviewProvider {
    static var previews: some View {
        OliveView()
    }
}
#endif
