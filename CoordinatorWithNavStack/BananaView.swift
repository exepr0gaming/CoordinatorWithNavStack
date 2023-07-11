//
//  AppleView.swift
//  CoordinatorWithNavStack
//
//  Created by Admin on 11.07.2023.
//

import SwiftUI

struct AppleView: View {
    var body: some View {
      List {
        Button("Push 🍌") {}
        Button("Push 🥕") {}
        Button("Push 🍋") {}
      }
    }
}

struct AppleView_Previews: PreviewProvider {
    static var previews: some View {
        AppleView()
    }
}
