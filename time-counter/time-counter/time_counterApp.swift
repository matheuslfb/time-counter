//
//  time_counterApp.swift
//  time-counter
//
//  Created by Matheus Lima Ferreira on 13/05/21.
//

import SwiftUI

@main
struct time_counterApp: App {
    let persistenceController = PersistenceController.shared
    @Environment(\.scenePhase) var scenePhase

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
        .onChange(of: scenePhase) { _ in
            persistenceController.save()
        }
    }
}
