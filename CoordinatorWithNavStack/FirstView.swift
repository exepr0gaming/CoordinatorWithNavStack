//
//  FirstView.swift
//  CoordinatorWithNavStack
//
//  Created by Admin on 11.07.2023.
//

import SwiftUI

struct FirstView: View {
  
  @EnvironmentObject private var coordinator: Coordinator
  
    var body: some View {
      List {
        Button("Push Second 🍌") {
          coordinator.push(.second)
        }
        Button("Present 🥕") {
          coordinator.present(sheet: .sheetFirst)
        }
        Button("Present 🍋") {
          coordinator.present(fullScreenCover: .fullScreenFirst)
        }
      }
      .navigationTitle("First View 🍎")
    }
}
#if DEBUG
struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
      FirstView()
    }
}
#endif
