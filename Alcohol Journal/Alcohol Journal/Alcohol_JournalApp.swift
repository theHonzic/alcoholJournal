//
//  Alcohol_JournalApp.swift
//  Alcohol Journal
//
//  Created by Jan Janovec on 14.07.2022.
//

import SwiftUI

@main
struct Alcohol_JournalApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
