//
//  SwiftUITestApp.swift
//  SwiftUITest
//
//  Created by vipin on 2/18/21.
//

import SwiftUI

@main
struct SwiftUITestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            
            ContentView()
              //  .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
