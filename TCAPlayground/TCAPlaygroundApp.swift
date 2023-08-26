//
//  TCAPlaygroundApp.swift
//  TCAPlayground
//
//  Created by Nazar Prysiazhnyi on 26.08.2023.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCAPlaygroundApp: App {
    
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
          ._printChanges()
      }

    
    var body: some Scene {
        WindowGroup {
            ContentView(store: TCAPlaygroundApp.store)
        }
    }
}
