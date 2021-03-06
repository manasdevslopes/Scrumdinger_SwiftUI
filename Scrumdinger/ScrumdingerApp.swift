//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by MANAS VIJAYWARGIYA on 10/09/21.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
//    @State private var scrums = DailyScrum.data
    @ObservedObject private var data = ScrumData()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $data.scrums) {
                    data.save()
                }
            }
            .onAppear {
                data.load()
            }
        }
    }
}
